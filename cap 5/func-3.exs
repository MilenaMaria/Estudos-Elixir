fizzbuzz = fn
  0, 0, _ -> "FizBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> a
end

calc = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end
IO.puts(fizzbuzz.(0, 0, 2))
IO.puts(fizzbuzz.(0, 2, 2))
IO.puts(fizzbuzz.(2, 0, 2))
IO.puts(fizzbuzz.(1, 1, 2))

IO.puts(calc.(10))
IO.puts(calc.(12))
IO.puts(calc.(13))
IO.puts(calc.(15))
