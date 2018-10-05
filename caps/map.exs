map = %{ name: "Dave", likes: "Programming", where: "Dallas" }

# lista as chaves
Map.keys map
# lista os valores
Map.values map
# valor na chave
map[:name]
map.name
# drop
Map.drop map, [:where, :likes]
# put
Map.put map, :also_like, "Ruby"
# procura chave
Map.has_key? map1, :where
# excluindo chaves
{ value, update_map } = Map.pop map2, :also_likes
# comparando maps