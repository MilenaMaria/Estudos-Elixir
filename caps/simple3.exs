defmodule Mod do
    def func1 do
        IO.puts "in func1"
    end
    def func2 do
        func1
        # chamada direta no mesmo modulo
        IO.puts "in func2"
    end
end

Mod.func1
# Chamada externa
Mod.func2

# exemplo de chamada com dois modulos

defmodule Outer do
    defmodule Inner do 
        def inner_func do 
        end
    end

    def outer_func do 
        #chamada externa do segundo e interna do primeiro 
        Inner.inner_func
    end
end

#chamada externa 
Outer.outer_func
Outer.Inner.inner_func