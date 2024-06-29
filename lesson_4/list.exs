# head -> 1st element of the list
# tail

# hd
# tl
# [head | tail] = [1, 2, 3, 4]
# example notation  list_b = [ 1 | [ 2 | [ 3 | [] ] ] ]  => == [1, 2, 3]
# tail call optimization (хвостовая рекурсия)

defmodule Demo do

  # def recur(n) do
  #   recur(n) * 2 # no optimization!
  # end

  # обход списка

  def iterate([]), do: IO.puts("end of the list")
  def iterate([ head | tail ]) do

    head |> IO.puts
    tail |> iterate()

  end

end

Demo.iterate([1, 2, 3, 4])
