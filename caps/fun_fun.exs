greeter = fn name ->(fn -> "Hello #{name}" end) end
nome = greeter.("Meu nome")

IO.puts nome.()