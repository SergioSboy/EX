defmodule Demo do

  def do_this(caller) do
    :timer.sleep(1000)
    result = 42
    send caller, {:ok, result}
  end

  def do_that(caller) do
    :timer.sleep(1000)
    result = 142
    send caller, {:ok, result}
  end

  def do_something_else(caller) do
    :timer.sleep(1000)
    result = 242
    send caller, {:ok, result}
  end

end

# processes
caller = self()
do_sync = &( spawn(Demo, &1, [caller]))
results = [
  do_sync.(:do_this),
  do_sync.(:do_that),
  do_sync.(:do_something_else)
]

Enum.each [:do_this, :do_that, :do_something_else], do_sync

fetch_responce = fn(_) ->
  receive do
    { :ok, number } -> number

  after 5000 -> nil

  end

end

results =  Enum.map 1..3, fetch_responce
