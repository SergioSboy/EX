defmodule Demo do
  def run (str) do
    # str = String.reverse(str)
    # str = String.upcase(str)
    # IO.inspect(str)
    str |>
    String.reverse() |>
    String.upcase() |>
    IO.inspect()

  end
end

"Hello world" |>
Demo.run()

# Tuples

t1 = {1, "three", :four, :five}
t2 = {2, {1, 3}, :dog, t1}

# Show elem in tuple

elem {:ok, 42}, 0
{:error, "Cannot data"} |> elem(1)

# Replace symbol in tuples

my_typle = {1, 3, :snake}
new_typle = my_typle |> put_elem(2, :dog)

new_typle |> IO.inspect()


# List

[1, 2, {3, 4}, "dog", ["cat", "snake"], nil]

# Keyword list

my_list = [ title: "Elexir", emerged: 2011]

my_list |> Keyword.get(:title) # => "Elixir"
[{:title, "Elixir"}, {:emerged, 2011}]


# Maps
# key - value
data = %{"title" => "Elixir", :paradigm => "Functional", 2011 => "emerged"}
data[:paradigm] # -> "Functional"
data[:unknown] # -> "nil"

%{paradigm: "Functional"}

# String

## Binary strings

"test"

## Character lists
'my string' # odinar '
