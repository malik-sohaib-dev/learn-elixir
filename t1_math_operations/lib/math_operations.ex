defmodule MathOperations do
  @moduledoc """
  Documentation for `MathOperations`.
  """

  @doc """
  Adds two numbers.
  ## Examples
      iex> MathOperations.add(1, 2)
      3
  """
  def add(num1, num2) do
    num1 + num2
  end

  @doc """
  Subtracts two numbers.
  ## Examples
      iex> MathOperations.subtract(2, 1)
      1
  """
  def subtract(num1, num2) do
    num1 - num2
  end

  @doc """
  Multiplies two numbers.
  ## Examples
      iex> MathOperations.multiply(2, 3)
      6
  """
  def multiply(num1, num2) do
    num1 * num2
  end

  @doc """
  Divides two numbers.
  ## Examples
      iex> MathOperations.divide(6, 3)
      2.0
  """
  def divide(num1, num2) do
    num1 / num2
  end

  @doc """
  Rounds a number to two decimal places.
  ## Examples
      iex> MathOperations.round(1.234)
      1.24
  """
  def round(num) do
    Float.ceil(num, 2)
  end
end
