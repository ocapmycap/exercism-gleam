pub fn reply(guess: Int) -> String {
  case guess {
    41 -> "So close"
    43 -> "So close"
    i if i < 41 -> "Too low"
    i if i > 43 -> "Too high"
    _ -> "Correct"
  }
}
