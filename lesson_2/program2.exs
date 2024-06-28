# Swap position two varibles

defmodule Swap do
  def swap(a, b) do
    {a, b} = {b, a}
    {a, b}
  end
end

a = 1
b = 2

IO.puts("До обмена: a = #{a}, b = #{b}")

{a, b} = Swap.swap(a, b)

IO.puts("После обмена: a = #{a}, b = #{b}")
