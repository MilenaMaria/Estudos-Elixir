defmodule Swapper do
    def swap([]), do: []
    def swap([ a, b | tail ]), do: [ b, a | swap(tail)]
    def swap([_]), do: raise "Não foi possivel trocar em lista impar"
end