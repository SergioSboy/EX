defmodule Demo do
  def do_that do
    IO.puts 'doing work...'

    # Получение сообщения
    receive do
      {sender, msg} ->
        IO.inspect sender
        IO.puts( "I've received a message: #{msg}")
        send sender, {self(), "Hello to you too!"}

      # Тайм аут
      after -> IO.puts("I haven't received any messages :-(")
    end

  end
end

pid spawn(Demo, :do_that, [])

# Отправка сообщения на процесс
send pid, {self(), "Hello!" }

# Получение сообщения на главный процесс
receive do
  {sender, msg} ->
    IO.inspect sender
    IO.puts( "I've received a message: #{msg}")
    send sender, {self(), "Hello to you too!"}

  # Тайм аут
  after -> IO.puts("I haven't received any messages :-(")
end
