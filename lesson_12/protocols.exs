# Полиморфизм - применения одних и тех же функции на разные типы данных

# Enum.count([1, 2, 3])

# Enum.count(1..3)

# # protocols
  # Enumerable
  # Collectable
  # Inspect
  # List.Chars
  # String.Chars
# # implementation

defprotocol MyProtocol do
  @fallback_to_any true
  def demo(arg)
end

defimpl MyProtocol, for: Integer  do
  def demo(arg) do
    IO.puts(arg)
  end
end

# fallback
defimpl MyProtocol, for: Any  do
  def demo(_) do
    IO.puts("Not implemented")
  end
end


MyProtocol.demo(42)
MyProtocol.demo(false)
