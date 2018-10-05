# concatenate
[1,2,3]++[4,5,6]
# flatten
List.flatten([[[1], 2], [[[3]]]])
#folding
List.foldl([1,2,3], "", fn value, acc -> "#{value}(#{acc})" end)
List.foldr([1,2,3], "", fn value, acc -> "#{value}(#{acc})" end)
#updating in the middle
List.replace_at(list, 2, "cat")
# Accessing tuples withing lists
kw = [{:name, "Dave"}, {:likes, "Programming"}, {:where, "Dallas", "TX"}]
List.keyfind(kw, "TX", 2)
kw = List.keydelete(kw, "TX", 2)
kw = List.keyreplace(kw, :name, 0, {:first_name, "Dave"})