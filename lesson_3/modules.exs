defmodule DemoModuleName do
  # ...

  defmodule Nested do
    # ...
    def my_func(text) do
      text |> IO.inspect()
    end

    def calc(a, b), do: a * b

    # Private function ...

    defp private_func do
      # ...
    end

  end

  defmodule Nested2 do
    # ...
  end
end

defmodule TestModule.Nested do
  # ...
end

defmodule TestModule.Nested2 do
  # ...
end

text |> DemoModuleName.Nested.my_func
3 |> DemoModuleName.Nested.calc(2) |> IO.inspect
IO.inspect DemoModuleName.Nested == :"Elixir.DemoModuleName.Nested"
