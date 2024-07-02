defmodule Demo do
  # require Integer
  # def run(list1, list2) do
  #   # for el when el > 10 <- list1, Integer.is_even(el), do: el * 2
  #   for a when a > 10 <- list1, b <- list2, Integer.is_even(b), do: a * b
  # end

  # @tax 0.1
  # def format_data(employees) do

  #   for {name, salary} <- employees,
  #   into: %{},
  #   do: {format_name(name), salary - salary * @tax}
  # end

  # def format_name(name) do
  #   name |>
  #   String.downcase |>
  #   String.to_atom
  # end

  def run(list) do
    for << char <- list >>, do: char - 1
  end
end

# (1..100) |> Demo.run((5..10)) |> IO.inspect

# %{"Jot" => 50, "Bill"=>40, "Alice"=>45, "Jim"=> 30} |>
# Demo.format_data() |> IO.inspect()

"fmjyjs" |> Demo.run() |> IO.inspect()
