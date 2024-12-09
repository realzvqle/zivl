import gleam/io

pub fn pass(string: String) {
  io.println("[+] " <> string)
}

pub fn fail(string: String) {
  io.println("[-] " <> string)
}

pub fn info(string: String) {
  io.println("[!] " <> string)
}
