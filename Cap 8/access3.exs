elenco = %{
    buttercup: %{
        ator: {"Robin", "robin"},
        papel: "princess"
    },
    westley: %{
        ator: {"Ele", "e ele"},
        papel: "fazendeiro"
    }
}

IO.inspect get_in(elenco, [Access.key(:westley), :ator, Access.elem(1)])
# busca na chame o nome do autor na posição (1) 
IO.inspect get_and_update_in(elenco,[Access.key(:buttercup), :papel],
                            fn(val) -> {val,"Queen"} end)
# busca na chave o papel e passa uma função para alterar
