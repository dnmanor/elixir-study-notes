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

  # reverse num
  def reverse_number(num, acc \\ 0)
  def reverse_number(0, acc), do: acc

  def reverse_number(num, acc) do
    new_num = div(num, 10)
    new_acc = acc * 10 + rem(num, 10)
    reverse_number(new_num, new_acc)
  end

  #lists are always linked
  def sum_list(list)
  def sum_list([]), do: 0

  def sum_list([head | tail]) do
    head + sum_list(tail)
  end



end
