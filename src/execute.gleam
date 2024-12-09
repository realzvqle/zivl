import gleam/io
import gleam/list
import tools

pub fn integer_handler(list: List(String)) -> Bool {
  tools.pass("Found an Integer")
  let result = list.first(list)
  case result {
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
  case result {
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
  case result {
    Ok(string) -> {
      tools.info("Variable Name " <> string)
    }
    Error(err) -> {
      io.debug(err)
    }
  }
  True
}
