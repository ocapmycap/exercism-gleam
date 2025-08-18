import gleam/string 
import gleam/result
import gleam/list

pub fn to_rna(dna: String) -> Result(String, Nil) {
  dna // String
  |> string.to_graphemes // (String) -> List(String)
  |> list.map(mapping) // (List(String), fn(String) -> a) -> List(a), a = Result(String,Nil)
  |> result.all // List(Result(String, Nil)) -> Result(List(String),Nil)
  |> result.map(string.concat) // Result(List(String), Nil), fn(List(a), a -> a) -> Result(a, Nil), a = String
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