require './games'
require './game_utils'

class Games
	include GameUtils
end

g = Games.new(['foo', 'bar'])
puts g.games
g.say_sth('Foooo')