defmodule FizzBuzz do
    def upto(n) when n <= 0, do: []
 # função principal de scape
    def upto(n) when n > 0, do: 1..n |> Enum.map(&fizzbuzz/1)
# função principal que recebe uma função anonima que aplicara a divisão nos numeros
    defp fizzbuzz(n), do: _fizzword(n, rem(n,3), rem(n,5))
# sub função que recebe os valores para calculo
    defp _fizzword(_n, 0, 0), do: "FizzBuzz"
    defp _fizzword(_n, 0, _), do: "Fizz"
    defp _fizzword(_n, _ ,0), do: "Buzz"
    defp _fizzword(n, _n, _), do: n
    # fuçoes de comparação
end