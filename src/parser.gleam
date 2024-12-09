import execute
import gleam/io
import gleam/list
import gleam/string
import tools

fn parse_type(s: String) {
  let split = string.split(s, " ")
  let result = list.first(split)
  case result {
    Ok(string) -> {
      let list = list.drop(split, 1)
      case string {
        "int" -> {
          execute.integer_handler(list)
        }
        "fun" -> {
          execute.function_handler(list)
        }
        "string" -> {
          execute.string_handler(list)
        }
        "\r" -> {
          True
        }
        "" -> {
          True
        }
        " " -> {
          True
        }
        _ -> {
          tools.fail("Error: Invalid Type")
          False
        }
      }
    }
    Error(err) -> {
      io.debug(err)
      False
    }
  }
}

pub fn split_file(content: List(String)) {
  case content {
    [] -> tools.info("Finished Operating file")
    [current, ..next] -> {
      parse_type(current)
      split_file(next)
    }
  }
}
