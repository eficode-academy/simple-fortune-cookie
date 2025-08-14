mod redis_client;
mod utils;

use std::collections::HashMap;
use std::convert::Infallible;
use std::sync::Arc;
use tokio::sync::RwLock;
use warp::{Filter, Reply};
use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
struct Fortune {
    id: String,
    message: String,
}

type FortuneStore = Arc<RwLock<HashMap<String, Fortune>>>;

fn create_default_store() -> FortuneStore {
    let mut map = HashMap::new();
    map.insert("1".to_string(), Fortune {
        id: "1".to_string(),
        message: "A new voyage will fill your life with untold memories.".to_string(),
    });
    map.insert("2".to_string(), Fortune {
        id: "2".to_string(),
        message: "The measure of time to your next goal is the measure of your discipline.".to_string(),
    });
    map.insert("3".to_string(), Fortune {
        id: "3".to_string(),
        message: "The only way to do well is to do better each day.".to_string(),
    });
    map.insert("4".to_string(), Fortune {
        id: "4".to_string(),
        message: "It ain't over till it's EOF.".to_string(),
    });

    Arc::new(RwLock::new(map))
}

fn with_store(store: FortuneStore) -> impl Filter<Extract = (FortuneStore,), Error = Infallible> + Clone {
    warp::any().map(move || store.clone())
}

async fn list_fortunes(store: FortuneStore) -> Result<impl Reply, Infallible> {
    let fortunes = store.read().await;
    let fortunes_vec: Vec<Fortune> = fortunes.values().cloned().collect();
    Ok(warp::reply::json(&fortunes_vec))
}

async fn get_fortune(id: String, store: FortuneStore) -> Result<impl Reply, Infallible> {
    // Try to get from Redis first if available
    if let Some(redis_client) = redis_client::get_client().await {
        if let Ok(message) = redis_client::get_fortune(&redis_client, &id).await {
            let fortune = Fortune { id: id.clone(), message };
            // Update local store
            store.write().await.insert(id.clone(), fortune.clone());
            return Ok(warp::reply::with_status(warp::reply::json(&fortune), warp::http::StatusCode::OK).into_response());
        }
    }

    let fortunes = store.read().await;
    match fortunes.get(&id) {
        Some(fortune) => Ok(warp::reply::with_status(warp::reply::json(fortune), warp::http::StatusCode::OK).into_response()),
        None => Ok(warp::reply::with_status(
            warp::reply::json(&"fortune not found"),
            warp::http::StatusCode::NOT_FOUND,
        ).into_response()),
    }
}

async fn random_fortune(store: FortuneStore) -> Result<impl Reply, Infallible> {
    let fortunes = store.read().await;
    let fortunes_vec: Vec<Fortune> = fortunes.values().cloned().collect();

    if fortunes_vec.is_empty() {
        drop(fortunes); // Explicitly drop the read lock
        return get_fortune("zero".to_string(), store).await;
    }

    // Generate random index before the await to avoid Send issues
    let random_index = {
        use rand::Rng;
        let mut rng = rand::thread_rng();
        rng.gen_range(0..fortunes_vec.len())
    };

    let id = fortunes_vec[random_index].id.clone();
    drop(fortunes);

    get_fortune(id, store).await
}

async fn create_fortune(fortune: Fortune, store: FortuneStore) -> Result<impl Reply, Infallible> {
    // Save to Redis if available
    if let Some(redis_client) = redis_client::get_client().await {
        if let Err(e) = redis_client::set_fortune(&redis_client, &fortune.id, &fortune.message).await {
            eprintln!("Redis hset failed: {}", e);
        }
    }

    store.write().await.insert(fortune.id.clone(), fortune.clone());
    Ok(warp::reply::json(&fortune))
}

#[tokio::main]
async fn main() {
    // Initialize Redis connection
    redis_client::init().await;

    // Create store and load from Redis if available
    let store = create_default_store();
    if let Some(redis_client) = redis_client::get_client().await {
        redis_client::load_fortunes(&redis_client, store.clone()).await;
    }

    let fortunes = warp::path("fortunes");

    // GET /fortunes - list all fortunes
    let list = fortunes
        .and(warp::path::end())
        .and(warp::get())
        .and(with_store(store.clone()))
        .and_then(list_fortunes);

    // GET /fortunes/{id} - get specific fortune
    let get = fortunes
        .and(warp::path::param())
        .and(warp::path::end())
        .and(warp::get())
        .and(with_store(store.clone()))
        .and_then(get_fortune);

    // GET /fortunes/random - get random fortune
    let random = fortunes
        .and(warp::path("random"))
        .and(warp::path::end())
        .and(warp::get())
        .and(with_store(store.clone()))
        .and_then(random_fortune);

    // POST /fortunes - create new fortune
    let create = fortunes
        .and(warp::path::end())
        .and(warp::post())
        .and(warp::body::json())
        .and(with_store(store.clone()))
        .and_then(create_fortune);

    let routes = list.or(get).or(random).or(create);

    println!("Starting server on port 9000...");
    warp::serve(routes)
        .run(([0, 0, 0, 0], 9000))
        .await;
}
