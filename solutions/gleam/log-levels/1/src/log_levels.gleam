import gleam/string

pub fn message(log_line: String) -> String {
case string.trim(log_line) {
  "[ERROR]: " <> msg -> message(msg)
  "[WARNING]: " <> msg -> message(msg)
  "[INFO]: " <> msg -> message(msg)
  msg -> msg
}
}

pub fn log_level(log_line: String) -> String {
  case string.trim(log_line) {
  "[" <> msg -> log_level(msg)
  "ERROR" <> _ -> "error"
  "WARNING" <> _ -> "warning"
  "INFO" <> _ -> "info"
  msg -> msg
}
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
