pub fn convert(number: Int) -> String {
  // Split the number into its decimal units
  // eg 1996 -> 1000, 900, 90, 6
  // The only exceptions 4,8, 40, 90, 400, 900
  //   let result = ""
   case number {
    n if n >= 1000 -> "M" <> convert(number - 1000)
    n if n >= 900 ->  "CM" <> convert(number - 900)
    n if n >= 500 -> "D" <> convert(number - 500)
    n if n >= 400 -> "CD" <> convert(number - 400)
    n if n >= 100 -> "C" <> convert(number - 100)
    n if n >= 90 -> "XC" <> convert(number - 90)
    n if n >= 50 -> "L" <> convert(number - 50)
    n if n >= 40 -> "XL" <> convert(number - 40)
    n if n >= 10 -> "X" <> convert(number - 10)
    n if n >=  9 -> "IX" <> convert(number - 90)
    n if n >= 5 -> "V" <> convert(number - 5)
    n if n >= 4 -> "IV" <> convert(number - 4)
    n if n >= 1 -> "I" <> convert(number - 1)
    _ -> ""
  }
}
