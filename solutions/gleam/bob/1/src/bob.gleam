import gleam/string
import gleam/list

pub fn is_non_alpha_only(s: String) -> Bool {
  string.to_graphemes(s)
  |> list.all(fn(c) {
    !is_alpha(c)
  })
}

fn is_alpha(c: String) -> Bool {
  case c {
    "a" | "b" | "c" | "d" | "e" | "f" | "g" | "h" | "i" | "j"
    | "k" | "l" | "m" | "n" | "o" | "p" | "q" | "r" | "s" | "t"
    | "u" | "v" | "w" | "x" | "y" | "z"
    | "A" | "B" | "C" | "D" | "E" | "F" | "G" | "H" | "I" | "J"
    | "K" | "L" | "M" | "N" | "O" | "P" | "Q" | "R" | "S" | "T"
    | "U" | "V" | "W" | "X" | "Y" | "Z" -> True
    _ -> False
  }
}

pub fn hey(remark: String) -> String {
  let question = string.trim_end(remark) |> string.ends_with("?")
  let is_shouted = string.trim_end(remark) |> string.uppercase == remark && !is_non_alpha_only(remark)
  case string.trim_end(remark){
    " " <> rest -> hey(rest)
    "" | "\n\r" <> _ | "\t" <> _ -> "Fine. Be that way!"
    _ if question && is_shouted -> "Calm down, I know what I'm doing!"
    _ if question -> "Sure."
    _ if is_shouted -> "Whoa, chill out!"
    _ -> "Whatever."
  }
}
