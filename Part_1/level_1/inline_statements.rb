games = ["Mortal Combat", "Fifa", "Call of duty"]

unless games.empty?
	puts "You have #{games.count} games in your collection."
end

# Refactored
puts "You have #{games.count} games in your collection." unless games.empty?