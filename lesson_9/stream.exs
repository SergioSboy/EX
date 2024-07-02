defmodule Demo do
  def run_lazy do
    # Первые пять элементов, которые делятся на 2
    # (1..1_000_000) |>
    # Stream.map(&(&1 + 1)) |>
    # Stream.filter(&(rem(&1, 2) == 2)) |>
    # Stream.with_index() |>
    # Enum.take(10)

    # Stream.repeatedly(fn -> :rand.uniform * 100 end)
    # Stream.filter(&(&1 < 50 && &1 > 20))
    # Enum.take(5)


    Stream.unfold(10, fn(x) ->
      case rem(x, 2) == 0 do
        true -> {x, x + 1}
        false -> {x, x + 2}
      end
    end) |>
    Enum.take(10)
  end

  def read_file do
    File.stream!("alice.txt") |>
    Enum.with_index(1) |>
    Enum.filter(fn({str, _n}) ->
      String.contains?(str, "Queen")
    end) |>
    Enum.take(3)
  end

  def
end
