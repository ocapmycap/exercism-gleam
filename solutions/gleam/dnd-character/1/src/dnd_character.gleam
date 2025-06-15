import gleam/int
import gleam/list
import gleam/result

pub type Character {
  Character(
    charisma: Int,
    constitution: Int,
    dexterity: Int,
    hitpoints: Int,
    intelligence: Int,
    strength: Int,
    wisdom: Int,
  )
}

pub fn roll_d6() -> Int {
  int.random(6)
  |> int.add(1)
}

pub fn roll_four() -> Int {
  [roll_d6(), roll_d6(), roll_d6(), roll_d6()]
    |> list.sort(int.compare)
    |> list.reverse
    |> list.take(3)
    |> list.fold(0, int.add)
}

pub fn generate_character() -> Character {
  let constitution = roll_four()
    echo "Constitution is " <>  int.to_string(constitution)
  echo "modifier is " <> modifier(constitution)  |> int.to_string
  Character(
    charisma: roll_four(),
    constitution: constitution,
    dexterity: roll_four(),
    hitpoints: modifier(constitution) 
                |> int.add(10),
    intelligence: roll_four(),
    strength: roll_four(),
    wisdom: roll_four(),
  )
}

pub fn modifier(score: Int) -> Int {
  score 
    |> int.subtract(10)
    |> int.floor_divide(2)
    |> result.unwrap(0)
}

pub fn ability() -> Int {
 roll_four()
}

