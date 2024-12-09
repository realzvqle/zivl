import gleam/io
import gleam/list

pub type IntegerType {
  IntegerType(varname: String, value: Int)
}

pub fn pass(string: String) {
  io.println("[+] " <> string)
}

pub fn fail(string: String) {
  io.println("[-] " <> string)
}

pub fn info(string: String) {
  io.println("[!] " <> string)
}

pub fn get_integer_by_name(
  table: List(IntegerType),
  var_name: String,
) -> Result(Int, String) {
  case list.find(table, fn(x) { x.varname == var_name }) {
    Ok(value) -> {
      Ok(value.value)
    }
    Error(_) -> {
      Error("Couldn't Find String")
    }
  }
}
