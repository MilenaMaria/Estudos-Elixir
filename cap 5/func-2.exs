fizzbuzz = fn
  0, 0, _ -> "FizBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> a
end

IO.puts(fizzbuzz.(0, 0, 2))
IO.puts(fizzbuzz.(0, 2, 2))
IO.puts(fizzbuzz.(2, 0, 2))
IO.puts(fizzbuzz.(1, 1, 2))
