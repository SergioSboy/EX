defmodule Demo do

  def do_this do
    :timer.sleep(1000)
    result = 42
    result |> IO.puts()
    result
  end

  def do_that do
    :timer.sleep(1000)
    result = 142
    result |> IO.puts()
    result
  end

  def do_something_else do
    :timer.sleep(1000)
    result = 242
    result |> IO.puts()
    result
  end

end

# processes
results = [
  spawn(Demo, :do_this, []),
  spawn(Demo, :do_that, []),
  spawn(Demo, :do_something_else, [])
]
results |> IO.inspect
