
# Длина списка с помощью рекурсии
defmodule Demo do

  # def len([]), do: 0
  # def len([_h | tail]), do: len(tail) + 1

  def len(l), do: do_len(0, l)

  defp do_len(total_length, [ _h | tail ]) do
    do_len(total_length + 1, tail)
  end

  defp do_len(total_length, []), do: total_length

end

# Создаем список от и до
defmodule Demo_2 do

  # span/2

  def span(from, to), do: do_span([], from, to)

  defp do_span(l, from, to) when from > to, do: l

  defp do_span(l, from, to) do
    do_span([to | l], from, to - 1)
  end

end

# Поиск максимума через рекурсию
defmodule Demo_3 do

  # max/1

  def max([ value | [ head | tail ]]) when value < head do
    max([ head | tail ])
  end

  def max([ value | [ head | tail ] ]) when value >= head do
    max([ value | tail])
  end

  def max([ value ]), do: value

end

# Пробегаемся по списку
[1, 2, 3, 4] |> Demo.len() |> IO.puts()

# Создаем список 2..10
2 |> Demo_2.span(10) |> IO.inspect()

# Максимум в списке
[1, 20, 11, 29, 12] |> Demo_3.max() |> IO.inspect()
