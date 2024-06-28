defmodule Birthday do
  @data %{"Ivan" => "29.09", "Alexander" => "30.05"}

  def get_birthday(name) do
    @data[name] |> IO.inspect(label: "День рождения")
  end

  def add_birthday(name, date) do
    updated_data = Map.put(@data, name, date)
    IO.inspect(updated_data, label: "Обновленный список дней рождения")
    updated_data
  end
end

Birthday.get_birthday("Ivan")
Birthday.add_birthday("Maria", "15.07")
Birthday.get_birthday("Maria")
