class Library
	atrr_accessor :games
	def initialize(games)
		self.games = games
	end

	def has_game?(search_game)
		for game in games
			return true if game == search_game
		end
		false
	end

	def add_game(new_game)
		games << new_game
		log('Awesome')
	end

	private
	def log(string_to_display)
		puts string_to_display
	end
end