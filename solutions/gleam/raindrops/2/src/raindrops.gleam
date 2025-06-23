import gleam/int

pub fn convert(number: Int) -> String {
    ""
      |> maybe_add_pling(number)
      |> maybe_add_plang(number)
      |> maybe_add_plong(number)
      |> fallback_to_number(number)
}


pub fn fallback_to_number(x: String, number: Int) -> String {
    case x {
      "" -> int.to_string(number)
      _ -> x
    }
}

 pub fn maybe_add_pling(x: String, number: Int) -> String {
  case number % 3 {
    0 -> x <> "Pling"
    _ -> x
  }
 }

 pub fn maybe_add_plang(x: String, number: Int) -> String {
  case number % 5 {
    0 -> x <> "Plang"
    _ -> x
  }
 }

 pub fn maybe_add_plong(x: String, number: Int)-> String {
  case number % 7 {
    0 -> x <> "Plong"
    _ -> x
  }
 }
