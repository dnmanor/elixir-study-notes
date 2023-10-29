defmodule Hello do
  def world(name) do
    IO.puts("Hello #{name}")
  end

  def some do
    name = IO.gets("What is your name? :")
    IO.puts("Hello #{name}")
  end
end
