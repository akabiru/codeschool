class Library
	attr_accessor :games
	def initialize(games)
		@games = games
	end

	def exec_game(name, action, error_action)
		game = games.detect { |game| game.name == name }
		action.call(game)
	rescue 
		error_action.call
	end

	# convert block received to Proc
	def each(print_all_details)
		games.each do |game|
			# yield game
			print_all_details.call(game)
		end
	end
end