require './library'
require './game'

GAMES = [
Game.new('Contra', year: 1987, system: 'NES'),
Game.new('Civilization', year: 1991, system: 'PC'),
Game.new('The Legend of Zelda', year: 1986, system: 'NES'),
Game.new('Mega Man X2', year: 1995, system: 'SNES'),
Game.new('Super Metroid', year: 1994, system: 'SNES'),
Game.new('Sim City 2000', year: 1993, system: 'PC'),
Game.new('Starcraft', year: 1998, system: 'PC')
]

# change Proc.new to lamda 
print_details = Proc.new do |game|
	puts "#{game.name} - (#{game.system}) - #{game.year}"
	# puts "#{game.name}"
end

print_all_details = Proc.new do |game|
	puts "#{game.name} - (#{game.system}) - #{game.year}"
end

error_handler = lambda { puts "Oops, something went wrong." }

library = Library.new(GAMES)
library.exec_game("Contra", print_details, error_handler)
35.times { print "-" }
puts "\n"
# Convert block to proc
library.each(print_all_details)