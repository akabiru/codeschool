def describe_favorites(games)
	for game in games
		puts "- #{game}"
	end
end

def describe_favourites_r(*games)
	for game in games
		puts "* #{game}"
	end
end

describe_favorites(['fizz', 'buzz', 'foo'])
describe_favourites_r('foo', 'bar')