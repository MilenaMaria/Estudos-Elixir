defmodule Example do
    @author "Eu"
    def get_author do 
        @author
    end
end

IO.puts "Exemplo escrito por #{Example.get_author}."