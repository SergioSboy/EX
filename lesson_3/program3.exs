# Task
## Demo.factorial/1
## factorial(5) => 1 * 2 * 3 * 4 * 5
defmodule Demo do
  def factorial(0), do: 1
  def factorial(num) when is_integer(num) do
    factorial(num - 1) * num
  end
  def factorial(_), do: nil
end

IO.puts("Введите число: ")
input = IO.gets("> ") |> String.trim()

case Integer.parse(input) do
  {num, _} ->
    result = Demo.factorial(num)
    IO.inspect(result)
  :error ->
    IO.puts("Введено некорректное число")
end
