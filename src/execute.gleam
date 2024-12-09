import gleam/io
import gleam/list
import tools
import types

pub fn integer_handler(list: List(String)) -> Bool {
  tools.pass("Found an Integer")
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

pub fn function_handler(list: List(String)) -> Bool {
  tools.pass("Found a Function")
  let result = list.first(list)
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
  let result = list.first(list)
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
