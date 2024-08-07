defmodule Demo do

  # Atributes
  @language "Elixir"
  @year 2011

  def func, do: @year + 1

  def language, do: @language
end


defmodule Importer do

  # import Demo
  alias Demo, as: D
  import IO
  def run do
    # Demo.func()

    D.func() |> inspect()
  end
end
# Demo.@language # => exception!

Demo.func() |> IO.inspect
Demo.language() |> IO.inspect
