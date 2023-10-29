defmodule Tutorials.Recursion.PrintDigits do
  def upto(0), do: 0

  # tail rec
  def upto(num) do
    IO.puts(num)
    upto(num - 1)
  end

  # head rec
  # def upto(num) do
  #   upto(num - 1)
  #   IO.puts(num)
  # end
end
