class InvalidGameError < StandardError; end

def new_game(name, options = {})
	{
		name: name,
		year: options[:year],
		system: options[:system]
	}

	unless name
		raise InvalidGameError.new
	end
end

begin 
	game = new_game(nil)
rescue InvalidGameError => e
	puts "This is the error #{e}"
end
