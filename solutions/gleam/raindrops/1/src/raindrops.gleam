import gleam/int

pub fn convert(number: Int) -> String {
    ""
      |> maybe_add_pling(number)
      |> maybe_add_plang(number)
      |> maybe_add_plong(number)
      |> fallback_to_number(number)
}


pub fn fallback_to_number(number: Int) -> fn(String) -> String {
  fn(result) {
    case result {
      "" -> int.to_string(number)
      _ -> result
    }
  }
}

 pub fn maybe_add_pling(number: Int) -> fn(String) -> String {
  case number % 3 {
    0 -> fn(x) { x <> "Pling" }
    _ -> fn(x) { x }
  }
 }
 pub fn maybe_add_plang(number: Int) -> fn(String) -> String {
  case number % 5 {
    0 -> fn(x) { x <> "Plang" }
    _ -> fn(x) { x }
  }
 }
 pub fn maybe_add_plong(number: Int) -> fn(String) -> String {
  case number % 7 {
    0 -> fn(x) { x <> "Plong" }
    _ -> fn(x) { x }
  }
 }
