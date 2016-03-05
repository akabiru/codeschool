def new_game(name, year=nil, system=nil)
  {
    name: name,
    year: year,
    system: system
  }
end

def new_game_r(name, options = {})
	{
		name: name,
		year: options[:year],
		system: options[:system]
	}
end

game = new_game_r("Street Figher II", :system => "SNES", :year => 1992)
mchezo = new_game_r("Mortal Kombat", year: 2000, system: "GNOS")
puts game
puts mchezo