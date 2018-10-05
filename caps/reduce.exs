defmodule MyList do
    def reduce([], value,_), do: value
    def reduce([head | tail], value, func) do
        reduce(tail, func.(head, value), func)
    end
  def mapsum([], _),  do: 0
  def mapsum([head | tail], fun) do
    fun.(head) + mapsum(tail, fun)
  end
end

# MyList.reduce([1,2,3,4,5], 1 , &(&1 * &2))
# MyList.reduce([1,2,3,4,5], 0 , &(&1 + &2))
# MyList.mapsum [1,2,3], &(&1 * &1)

# pag 78/89