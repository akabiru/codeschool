games = ["Mortal Combat", "Fifa", "Call of duty"]

if !games.empty?
	puts "You have #{games.count} games in your collection."
end

=begin
unless = negative if condition
statement is !true	
Refactored
=end
unless games.empty?
	puts "You have #{games.count} games in your collection."
end
