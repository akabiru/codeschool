def new_game(name, year, system)
  {
    name: name,
    year: year,
    system: system
  }
end

def new_game_r(name, year = nil, system = nil)
	{
		name: name,
		year: year,
		system: system
	}
end

game = new_game("Street Figher II", nil, nil)
game_r = new_game_r("Street Figher II")