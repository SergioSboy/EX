defmodule Demo do
  def run do

    try do


    rescue

      error -> IO.inspect(error)

    end
  end
end
