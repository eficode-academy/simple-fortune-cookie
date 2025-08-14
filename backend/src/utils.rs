use std::env;

pub fn get_env<K: AsRef<std::ffi::OsStr>>(key: K, fallback: &str) -> String {
    env::var(key).unwrap_or_else(|_| fallback.to_string())
}