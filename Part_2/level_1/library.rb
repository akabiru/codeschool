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

	def each(&print_all_details)
		games.each(&print_all_details)
	end

	def names
		games.map(&:name)
	end

	def list
		games.each do |game|
			if block_given?
				puts yield game
			else
				puts "- #{game.name}"
			end
		end
	end
end