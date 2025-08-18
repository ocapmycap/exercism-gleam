import gleam/string 
pub fn to_rna(dna: String) -> Result(String, Nil) {
  case string.pop_grapheme(dna) {
    Ok(#(head, rest)) -> case mapping(head) {
      Ok(mapped) -> case to_rna(rest) {
        Ok(s) -> Ok(mapped <> s)
        Error(_) -> Error(Nil)
      }
      Error(_) -> Error(Nil)
    }
    Error(_) -> Ok("")
  }
}

pub fn mapping(dna: String) -> Result(String, Nil) {
  case dna {
    "A" -> Ok("U")
    "G" -> Ok("C")
    "T" -> Ok("A")
    "C" -> Ok("G")
    _ -> Error(Nil)
  }
}