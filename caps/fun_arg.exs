defmodule Greeter do
    def for(name, greeting) do
        fn
            (^name) -> "#{greeting} #{name}"
            (_)     -> "Não sei quem é"
        end
    end
end

um_nome = Greeter.for("Eu","Oi")
IO.puts um_nome.("Eu")
IO.puts um_nome.("Outro")