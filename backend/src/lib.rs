use std::collections::HashMap;
use std::sync::Arc;
use tokio::sync::RwLock;
use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Fortune {
    pub id: String,
    pub message: String,
}

pub type FortuneStore = Arc<RwLock<HashMap<String, Fortune>>>;

pub fn create_default_store() -> FortuneStore {
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
