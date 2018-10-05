elenco = [
    %{
        personagem: "Buttercup",
        ator: {"Ele", "da Silva"},
        papel: "princess"
    },
    %{
        personagem: "Westley",
        ator: {"Outro", "de Souza"},
        papel: "fazendeiro"
    }
]

IO.inspect get_in(elenco, [Access.all, :ator, Access.elem(1)])
# busca todos os nomes do autores na posição (1)
IO.inspect get_and_update_in(elenco,[Access.all(), :ator, Access.elem(1)],
                            fn(val) -> {val, String.reverse(val)} end)
# retorna os valores e depois inverte os nomes na posição (1)
# get_and_update_in(caminho,[], função)