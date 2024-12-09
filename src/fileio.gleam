import simplifile as sf

pub fn read_file(file: String) -> Result(String, sf.FileError) {
  let result = sf.read(file)
  result
}
