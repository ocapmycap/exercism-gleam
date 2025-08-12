import gleam/string
import gleam/list
import gleam/result 
pub fn first_letter(name: String) -> String {
  name
    |> string.trim
    |> string.first
    |> result.unwrap("")
}

pub fn initial(name: String) {
  name
  |> first_letter
  |> string.capitalise
  |> string.append(".")
}

pub fn initials(full_name: String) {
  full_name
  |> string.split(" ")
  |> list.map(initial)
  |> string.join(" ")
}

pub fn pair(full_name1: String, full_name2: String) {
 "
     ******       ******
   **      **   **      **
 **         ** **         **
**            *            **
**                         **
**     " <> initials(full_name1) <> "  +  " <> initials(full_name2) <> "     **
 **                       **
   **                   **
     **               **
       **           **
         **       **
           **   **
             ***
              *
"
}
