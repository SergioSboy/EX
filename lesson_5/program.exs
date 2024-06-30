defmodule Matrix_with_stroke_number do
  def typewrite(filename) do
    File.open(filename, [:read]) |> handle_open(1)
  end

  defp handle_open({:ok, io_device}, line_number) do
    io_device |> read_by_line(line_number) |> File.close()
  end

  defp handle_open({:error, reason}, _line_number), do: reason |> IO.inspect

  defp read_by_line(io_device, line_number) do
    IO.read(io_device, :line) |> print_line(io_device, line_number)
  end

  defp print_line(:eof, io_device, _line_number), do: io_device
  defp print_line(string, io_device, line_number) do
    IO.write("Line #{line_number}: ")

    do_sleep(500)

    string
    |> String.split("", trim: true)
    |> Enum.each(&print_char/1)

    io_device |> read_by_line(line_number + 1)
  end

  defp print_char(char) do
    IO.write(char)
    do_sleep(100)
  end

  defp do_sleep(n), do: :timer.sleep(n)
end

"matrix.txt" |> Matrix_with_stroke_number.typewrite()
