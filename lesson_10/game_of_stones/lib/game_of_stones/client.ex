defmodule GameOfStones.Client do
  @server GameOfStones.Server


  defp next_turn do
    case GenServer.call(@server, {:take, ask_stones()}) do
      {:next_turn, next_player, stones_count} ->
        IO.puts("\nPlayer #{next_player} turns next. Stones: #{stones_count}.")
        next_turn()

      {:winner, winner} ->
        IO.puts("\nPlayer #{winner} wins!!!")

      {:error, reason} ->
        IO.puts("\nThere are an error: #{reason}")
        next_turn()
    end
  end

  defp ask_stones do
    IO.gets("\nPlease take from 1 to 3 stones:\n")
    |> String.trim()
    |> Integer.parse()
    |> stones_to_take()
  end

  defp stones_to_take({count, _}), do: count
  defp stones_to_take(:error), do: 0
end
