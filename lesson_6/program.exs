defmodule Matrix_with_stroke_number do
  def typewrite(filename) do

    case File.open(filename, [:read]) do
      { :ok, io_dev } -> handle_open(io_dev, 1)
      { :error, reason} -> IO.puts(reason)
      _ -> IO.puts("unexpected error")
    end

  end

  defp handle_open(io_device, line_number) do

    io_device |> read_by_line(line_number) |> File.close()

  end

  defp read_by_line(io_device, line_number) do
    case IO.read(io_device, :line) do
      :eof -> io_device
      string -> print_line(string, io_device, line_number)
    end
  end

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
