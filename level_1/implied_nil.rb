games = ["Mortal Combat", "Fifa", "Call of duty"]
search = "Fifa"
search_index = games.find_index(search)

if search_index != nil
	puts "#{games[search_index]} found at #{search_index}"
else
	puts "#{search} not found."
end

# Refactored
if search_index
	puts "#{games[search_index]} found at #{search_index}"
else
	puts "#{search} not found."
end	
