// TODO: import the `gleam/int` module
// TODO: import the `gleam/float` module
// TODO: import the `gleam/string` module
import gleam/int as i
import gleam/float as f

pub fn pence_to_pounds(pence: Int) -> Float {
  i.to_float(pence)/.100.0
}

pub fn pounds_to_string(pounds: Float) -> String{
   "£" <> f.to_string(pounds)
}
