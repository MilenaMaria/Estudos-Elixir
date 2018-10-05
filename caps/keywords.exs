# Palavras chave
defmodule Canvas do
@defaults [ fg: "preto", bg: "branco", font: "Merriweather" ]
    def draw_text(text, options \\ []) do
        options = Keyword.merge(@defaults, options)
        IO.puts "=============================="
        IO.puts "Escrevendo o texto #{inspect(text)}"
        IO.puts "Primeiro plano: #{options[:fg]}"
        IO.puts "Fundo: #{Keyword.get(options, :bg)}"
        IO.puts "Fonte: #{Keyword.get(options, :font)}"
        IO.puts "Pattern: #{Keyword.get(options, :pattern, "solid")}"
        IO.puts "Estilo: #{inspect Keyword.get_values(options, :style)}"
        IO.puts "=============================="
    end
end
Canvas.draw_text("Olá", fg: "vermelho", style: "italico", style: "bold")
