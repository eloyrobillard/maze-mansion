use std::time::{SystemTime, UNIX_EPOCH};

pub fn gen(max: usize) -> usize {
  let start = SystemTime::now();
  let since_the_epoch = start
      .duration_since(UNIX_EPOCH)
      .expect("Time went backwards");
  (since_the_epoch.as_nanos() % max as u128).try_into().unwrap()
}