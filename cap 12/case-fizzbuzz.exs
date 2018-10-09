defmodule FizzBuzz do
  def fb(n) when n > 0 do
    1..n |> Enum.map(&fizzbuzz/1)
  end

  defp fizzbuzz(n) do
    case n do
      n when rem(n, 3) == 0 and rem(n, 5) == 0 -> "|FizzBuzz|"
      n when rem(n, 3) == 0 -> "|Fizz|"
      n when rem(n, 5) == 0 -> "|Buzz|"
      _ -> n
    end
  end
end

IO.inspect(FizzBuzz.fb(15))
