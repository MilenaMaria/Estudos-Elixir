values = [1,2,3,4]
mean = with count = Enum.count(values),
            sum = Enum.sum(values),
        do: sum/count

IO.puts mean