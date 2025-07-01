import gleam/set.{ type Set }
import gleam/string

pub fn is_isogram(phrase phrase: String) -> Bool {
   is_isogram_recursive(set.new(),string.lowercase(phrase))   
}

pub fn is_isogram_recursive(in set: Set(String), phrase phrase: String) -> Bool {
  case string.pop_grapheme(phrase) {
    Ok(#(head, tail)) -> {
      case head {
        "-" | " " -> is_isogram_recursive(set, tail)
        _ ->
          case set.contains(set, head) {
            True -> False
            False -> case string.is_empty(tail) {
                True -> True
                False -> set
                  |> set.insert(head)
                  |> is_isogram_recursive(tail)
            }
          }
      }
    }
    Error(_) -> True
  }
}

