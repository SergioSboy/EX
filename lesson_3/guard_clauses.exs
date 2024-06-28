defmodule Demo do
  def divide(_a, 0), do: 0

  def divide(a, b) when is_number(b) and is_number(a) do
    a / b
  end

  # fallback
  def divide(_, _), do: nil
end

Demo.divide(3, 'test')


# Comparison operators == <  > >= <=
# Arithmetic + - *
# Boolean and, or, !
# in
# Join ++ <>
# Type-check function is_number, is_list, is_atom
# Built-in functions abs/1 elem/2 length/1
