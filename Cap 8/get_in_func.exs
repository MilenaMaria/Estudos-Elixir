# não sei pq não pega o primeiro
authors = [
    %{ nome: "Jose", language: "Elixir" },
    %{ name: "Maria", language: "Rubyr" },
    %{ name: "Eu", language: "Perl" }
]

language = fn (:get, collection, next) ->
    for row <- collection do
        if String.contains?(row.language, "r") do
            next.(row)
        end
    end
end

IO.inspect get_in(authors, [language, :name])
# get_in(data,[chave])