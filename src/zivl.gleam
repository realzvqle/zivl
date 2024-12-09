import fileio
import gleam/io
import gleam/string
import parser

pub fn main() {
  let result = fileio.read_file("idk.zl")
  case result {
    Ok(content) -> {
      let lines = string.split(content, "\n")
      parser.split_file(lines)
      Nil
    }
    Error(_) -> {
      io.println("Failure to Read File")
    }
  }
}
