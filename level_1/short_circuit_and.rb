search = "Call of Duty"
games = ["Mortal Combat", "Fifa", "Call of Duty"]
matched_games = games.grep(Regexp.new(search))

if matched_games.length > 0
	if matched_games.include?(search)
		puts "#{matched_games.first} found."
	end
end

# Refactored
if matched_games.length > 0 && matched_games.include?(search)
	puts "#{search} found."
else
	puts "#{search} not found."
end

