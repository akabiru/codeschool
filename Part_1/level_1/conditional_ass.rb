# search = "" unless  search
search = search || ""
games = ["Mortal Combat", "Fifa", "Call of Duty"]
matched_games = games.grep(Regexp.new(search))

puts "Found the followign games..."
matched_games.each do |game|
	puts "- #{game}"
end