elenco = [
    %{
        personagem: "Buttercup",
            ator: %{
                first: "Ele",
                last: "da Silva"
            },
            papel: "princess"
    },
    %{
        personagem: "Westley",
            ator: %{
                first: "Outro",
                last: "de Souza"
            },
            papel: "fazendeiro"
    }
]

IO.inspect get_in(elenco, [Access.all(), :personagem])
# retorna todos os personages
IO.inspect get_in(elenco, [Access.at(1), :papel])
# retorna o papel do elemento da posição 1
IO.inspect get_and_update_in(elenco, [Access.all(), :ator, :last],
                            fn (val) -> {val, String.upcase(val)} end)
#retorna o sobrenome e atualiza para upcase 