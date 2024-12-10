import gleam/int
import gleam/io
import gleam/list
import tools

pub fn integer_handler(list: List(String)) -> Bool {
  tools.pass("Found an Integer")
  case list.first(list) {
    Ok(varname) -> {
      let newlist = list.drop(list, 1)
      tools.info("Variable Name " <> varname)
      case list.first(newlist) {
        Ok(value) -> {
          case int.base_parse(value, 10) {
            Ok(intvalue) -> {
              tools.info("Value " <> int.to_string(intvalue))
            }
            Error(err) -> {
              io.debug(err)
            }
          }
        }
        Error(err) -> {
          io.debug(err)
        }
      }
    }
    Error(err) -> {
      io.debug(err)
    }
  }
  True
}

pub fn function_handler(list: List(String)) -> Bool {
  tools.pass("Found a Function")
  case list.first(list) {
    Ok(string) -> {
      tools.info("Variable Name " <> string)
    }
    Error(err) -> {
      io.debug(err)
    }
  }
  True
}

pub fn string_handler(list: List(String)) -> Bool {
  tools.pass("Found a String")
  case list.first(list) {
    Ok(string) -> {
      tools.info("Variable Name " <> string)
    }
    Error(err) -> {
      io.debug(err)
    }
  }
  True
}
