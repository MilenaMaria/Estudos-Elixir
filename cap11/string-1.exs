defmodule OneString do
  def printable?([]), do: true

  def printable?([head | tail]) do
    if String.printable?(to_string([head])) do
      printable?(tail)
    else
      false
    end
  end
end

IO.inspect(OneString.printable?('Hello'))
# aspas simples igual a lista
IO.inspect(OneString.printable?([2, 3, 5, 6]))
IO.inspect(OneString.printable?([0, 0]))
