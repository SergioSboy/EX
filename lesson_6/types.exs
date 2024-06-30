

# defmodule Demo do
#
#   @default_opts [ mode: "r", filename: "demo.txt"]
#
#   def run(_arg, opts \\ []) do
#     opts = Keyword.merge(@default_opts, opts)
#     opts |> IO.inspect()
#   end
#
# end
#
# Demo.run(42, mode: "a+")

defmodule User do

  defstruct name: "",
            surname: "",
            age: 0,
            role: :member

  def show(user = %User{}) when name != "" do
    user |>  IO.inspect()
  end

  def update(user = %User{}, new_name) do

    %User{user | name: new_name} # %{user | name: new_name}

  end
end


defmodule Departament do
  defstruct title: "",
            employees: [],
            head: %User{}
end

defmodule Demo do
  def run do
    # m = %{name: "test", surname: "test"}
    user = %User{ name: "John", surname: "Doe", age: 40, role: :admin} # Частный случай map, разрешенные поля изначально
    user |> User.show()
    updated_user = user |> User.update("Jim")

    departament = %Departament{
      title: "Demo",
      employees: [updated_user],
      head: updated_user
    }

    user = %User{ name: "Ann", surname: "Doe", age: 20, role: :admin}

    departament = %Departament{ departament | employees: [ user | departament.employees ]} # Обновление департамента
    departament |> IO.inspect()

    departament = update_in(departament.head.age, &{&1 + 1})
    departament = put_in(departament.head.name, "John")
    departament |> IO.inspect()
  end
end


Demo.run()
