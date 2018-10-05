# list_concat.([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]

list_concat = fn list1, list2 -> list1 ++ list2 end
sum = fn a, b, c -> a + b + c end
pair_tuple = fn {a, b} -> [a, b] end
