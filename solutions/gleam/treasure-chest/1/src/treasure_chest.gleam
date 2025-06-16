// Please define the TreasureChest generic custom type
pub type TreasureChest(a) {
  TreasureChest(String, a)
}

// Please define the UnlockResult generic custom type

pub type UnlockResult(a) {
  Unlocked(a)
  WrongPassword
}

pub fn get_treasure(
  chest: TreasureChest(treasure),
  password: String,
) -> UnlockResult(treasure) {
  case chest {
    TreasureChest(password_b, treasure) if password_b == password ->  Unlocked(treasure)
      _ -> WrongPassword
  }
}
