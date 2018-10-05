defmodule Params do
    def func(p1, p2 \\ 123)
    def func(p1, p2) when is_list(p1) do 
        "Voce disse que #{p2} é uma lista"
    end
    def func(p1, p2) do
        "Voce passou #{p1} e #{p2}"
    end 
end

IO.puts Params.func(99)
IO.puts Params.func(99,"cat")
IO.puts Params.func([99])
IO.puts Params.func([99], "dog")
# pag63