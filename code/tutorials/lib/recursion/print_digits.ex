defmodule Tutorials.Recursion.PrintDigits do
  def countupto(0), do: 0

  # tail rec
  def countupto(num) do
    IO.puts(num)
    countupto(num - 1)
  end

  # head rec
  # def upto(num) do
  #   upto(num - 1)
  #   IO.puts(num)
  # end

  # base case
  def sumupto(0), do: 0

  def sumupto(num) do
    num + sumupto(num - 1)
  end

  # simple factorial implementation
  # def factorial(num) do
  #   num * factorial(num - 1)
  # end

  # tail rec factorial implementation
  # no guranteed speed advantage but memory efficiency is ?
  def factorial(num, acc \\ 1)
  def factorial(1, acc), do: acc

  def factorial(num, acc) do
    factorial(num - 1, acc * num)
  end
end
