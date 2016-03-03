def search_index(games, search_term)
  search_index = games.find_index(search_term)

  if search_index
    search_index
  else
    "Not Found"
  end
end

# Refactored
def search_index_r(games, search_term)
    games.find_index(search_term) || "Not found"
end