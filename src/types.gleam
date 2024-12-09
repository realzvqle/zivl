import gleam/list

pub type IntegerType {
  IntegerType(varname: String, value: Int)
}

pub type StringType {
  StringType(varname: String, value: String)
}

pub type FloatType {
  FloatType(varname: String, value: Float)
}

pub type IntegerState {
  IntegerState(table: List(IntegerType))
}

pub type StringState {
  StringState(table: List(StringType))
}

pub type FloatState {
  FloatState(table: List(FloatType))
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

pub fn get_float_by_name(
  table: List(FloatType),
  var_name: String,
) -> Result(Float, String) {
  case list.find(table, fn(x) { x.varname == var_name }) {
    Ok(value) -> {
      Ok(value.value)
    }
    Error(_) -> {
      Error("Couldn't Find String")
    }
  }
}

pub fn get_string_by_name(
  table: List(StringType),
  var_name: String,
) -> Result(String, String) {
  case list.find(table, fn(x) { x.varname == var_name }) {
    Ok(value) -> {
      Ok(value.value)
    }
    Error(_) -> {
      Error("Couldn't Find String")
    }
  }
}

pub fn append_integer_type(
  state: IntegerState,
  item: IntegerType,
) -> IntegerState {
  let new_table = list.append(state.table, [item])
  IntegerState(table: new_table)
}
