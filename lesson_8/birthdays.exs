defmodule Birthdays.Server do
  def run do
    spawn(fn -> loop(%{}) end) |> Process.register(:birthdays)
  end

  # long running server processes
  defp loop(current_state) do
    new_state = receive do
      message -> process_message(current_state, message)
    end

    new_state |> loop()
  end

  defp process_message(current_state, { :add, name, birthday}) do
    current_state |> Map.put(name, birthday)
  end

  defp process_message(current_state, { :all, caller}) do
    caller |> send({ :response, current_state})
    current_state
  end

  defp process_message(current_state, { :get, caller, name }) do
    caller |> send( { :response, curent_state[name] })
    curent_state
  end

  defp process_message(current_state, { :remove, caller, name }) do
    current_state |> Map.delete(name)
  end
end


defmodule Birthdays.Client do
  def all do
    do_send({ :all, self() })
    get_response()
  end

  def get(name) do
    do_send({ :get, self(), name })
    get_response()
  end

  def add(name, birthday), do: do_send({ :add, name, birthday })

  def remove(name), do: do_send({ :remove, name })

  defp do_send(msg), do: send(:birthdays, msg)
  defp get_response do
    receive do
      {:response, data } -> data
      _ -> :error
     after 5000 -> IO.puts "Timeout!"

    end

  end
end
