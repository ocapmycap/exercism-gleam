pub fn sum(n: Int) -> Int {
  case n <= 0 {
    True -> 0
    False -> n + sum(n - 1)
  }
}

pub fn square(n: Int) -> Int {
  n * n
}
pub fn square_of_sum(n: Int) -> Int {
  sum(n)
  |> square
}

pub fn sum_of_squares(n: Int) -> Int {
  case n <= 0 {
    True -> 0
    False -> square(n) + sum_of_squares(n - 1)
  }
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
