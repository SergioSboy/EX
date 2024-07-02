defmodule GameOfStones.Server do
  use GenServer

  def init(:started, stones_num) do

    # :started

    # :game_in_progress

    # :game_ended

    {:ok, {1, stones_num, :started}}
  end

  def handle_call(:current_state, _, {player, current_stones, _}) do
    {:reply, {player, current_stones}, {player, current_stones, :game_in_progress}}
  end

  # def handle_cast(request, state) do
  #   {:noreply, new_state}
  # end

end
