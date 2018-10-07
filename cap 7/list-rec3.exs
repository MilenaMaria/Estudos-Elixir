defmodule Max do
  def max([head | tail]), do: _max(tail, head)

  defp _max([], maxi), do: maxi

  defp _max([head | tail], maxi) when head > maxi do
    _max(tail, head)
  end

  defp _max([_head | tail], maxi), do: _max(tail, maxi)
end

IO.puts(Max.max([2, 4, 4, 4]))
IO.puts(Max.max([1, 10, 9, 2]))
IO.puts(Max.max([9, 99, 5, 4]))
IO.puts(Max.max([1, 1, 1, 1]))
