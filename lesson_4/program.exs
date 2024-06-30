# Список который содержит только нечетные элементы

defmodule Demo do
  # keep_odd/1
  def odd([]), do: []
  def odd([head | tail]) do
    if rem(head, 2) == 1 do
     [head | odd(tail)]
    else
      odd(tail)
    end
  end
end

list = [1, 2, 3, 4, 5, 6]
list |> Demo.odd() |> IO.inspect()
