defmodule Calculator do
  @moduledoc """
  Documentation for `Calculator`.
  """

  @doc """
  Calculates the percentage of a value in relation to a total.
  ## Examples
      iex> Calculator.percentage(1, 2)
      50
  """
  def percentage(value, total) do
    value
    |> MathOperations.multiply(100)
    |> MathOperations.divide(total)
    |> MathOperations.round()
  end

  @doc """
  Calculates the distance traveled given a speed and time.
  ## Examples
      iex> Calculator.distance(2, 3)
      6
  """
  def distance(speed, time) do
    speed
    |> MathOperations.multiply(time)
    |> MathOperations.round()
  end
end
