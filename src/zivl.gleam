import fileio
import gleam/string
import parser
import tools

pub fn main() {
  let result = fileio.read_file("script.zl")
  case result {
    Ok(content) -> {
      let lines = string.split(content, "\n")
      parser.split_file(lines)
      Nil
    }
    Error(_) -> {
      tools.fail("Failure to Read File")
    }
  }
}
