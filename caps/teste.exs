defmodule Soma do
    def sum([]), do: 0
    def sum([head|tail]), do: head + sum(tail)
end


IO.puts Soma.sum([1,2,3])
# 56