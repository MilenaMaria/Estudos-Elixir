nested = %{
    buttercup: %{
        actor: %{
            first: "Ele",
            last: "e o sobrenome"
    }   ,
        role: "princess"
    },
    westley: %{
        actor: %{
            first: "outro",
            last: "outro tbm" # typo!
        },
        role: "farm boy"
    }
}
IO.inspect get_in(nested, [:buttercup])
IO.inspect get_in(nested, [:buttercup, :actor])
IO.inspect get_in(nested, [:buttercup, :actor, :first])
IO.inspect put_in(nested, [:westley, :actor, :last], "Elwes")