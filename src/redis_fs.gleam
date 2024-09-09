import argv
import envoy
import gleam/io

//TODO: Look into using clad to get commandline flags
pub fn main() {
  case argv.load().arguments {
    ["push", path, file_key] -> push(path, file_key)
    ["clone", path, file_key] -> clone(path, file_key)
    ["usage", file_key] -> usage(file_key)
    ["list"] -> list()
    ["delete", file_key] -> delete(file_key)
    ["-h"] -> help()
    _ -> help()
  }
}

//TODO
fn help() -> Nil {
  io.println("help string")
}

//TODO
fn push(path: String, key: String) -> Nil {
  io.println("Pushing file: " <> path <> "\nWith key: RedisFS:" <> key)
}

//TODO
fn clone(path: String, key: String) -> Nil {
  io.println("Getting file with key: RedisFS:" <> key <> "\nSaving to" <> path)
}

//TODO
fn usage(key: String) -> Nil {
  io.println("Key: 'RedisFS:" <> key <> "' is using 69bytes")
}

//TODO
fn list() -> Nil {
  io.println("File1\nFile2\nFile3...")
}

//TODO
fn delete(key: String) -> Nil {
  io.println("Deleting RedisFS:" <> key)
}
