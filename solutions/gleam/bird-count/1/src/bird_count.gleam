import gleam/list

pub fn today(days: List(Int)) -> Int {
  case days {
    [i,..] -> i
    _ -> 0
  }
}

pub fn increment_day_count(days: List(Int)) -> List(Int) {
  case days {
    [i, ..rest] -> [i + 1, ..rest]
    [] -> [1]
  }
}

pub fn has_day_without_birds(days: List(Int)) -> Bool {
  case days {
    [first, ..rest] -> case first == 0 {
      True -> True
      False -> has_day_without_birds(rest)
    }
    _ -> False
  }
}

pub fn total(days: List(Int)) -> Int {
  case days {
    [first, ..rest] -> first + total(rest)
    _ -> 0
  }
}

pub fn busy_days(days: List(Int)) -> Int {
    case days {
    [first, ..rest] -> case first >= 5 {
      True -> 1 + busy_days(rest)
      False -> busy_days(rest)
    }
    _ -> 0
  }
}
