defmodule Product do
  defstruct title: "", price: 0

  defimpl Inspect do

    def inspect(%Product{title: title, price: price}, _) do
      "#{title} -- #{price}"
    end

  end
end

defmodule Demo do
  def run do
    product = %Product{title: "demo", price: 42}
    product |> inspect |> IO.puts
  end
end


Demo.run
