list = [1, 2, 3, 5, 4]

Enum.reduce(list, nil, fn
  x, nil ->
    {x, x}

  x, {min, max} ->
    {
      if(min < x, do: min, else: x),
      if(max > x, do: max, else: x)
    }
end)
|> IO.inspect()
