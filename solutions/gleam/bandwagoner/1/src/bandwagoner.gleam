// TODO: please define the 'Coach' type
pub type Coach {
Coach(
  name: String,
  former_player: Bool
)
}
// TODO: please define the 'Stats' type
pub type Stats {
  Stats(
    wins: Int,
    losses: Int, 
  )
}

// TODO: please define the 'Team' type
pub type Team {
  Team(
    name: String,
    coach: Coach,
    stats: Stats,
  )
}
pub fn create_coach(name: String, former_player: Bool) -> Coach {
  Coach(name, former_player)
}

pub fn create_stats(wins: Int, losses: Int) -> Stats {
  Stats(wins, losses)
}

pub fn create_team(name: String, coach: Coach, stats: Stats) -> Team {
  Team(
    name,
    coach,
    stats
  )
}

pub fn replace_coach(team: Team, coach: Coach) -> Team {
  Team(
    ..team,
    coach: coach,
  )
}

pub fn is_same_team(home_team: Team, away_team: Team) -> Bool {
  case home_team.name == away_team.name, home_team.coach == away_team.coach, home_team.stats == away_team.stats  {
    True, True, True -> True
    _,_,_ -> False
  }
}

pub fn root_for_team(team: Team) -> Bool {
  case team {
    Team(name:_, coach: coach, stats: _) if coach.name == "Gregg Popovich" || coach.former_player -> True
    Team(name: name, coach: _, stats: _) if name == "Chicago Bulls" -> True
    Team(name: _, coach: _, stats: stats) if stats.wins == 60 || stats.losses > stats.wins -> True
    _ -> False
  }
}
