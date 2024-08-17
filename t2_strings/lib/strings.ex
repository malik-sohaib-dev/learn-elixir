defmodule Strings do
  @moduledoc """
  Documentation for `Strings`.
  """

  @doc """
  String trimming function.
  ## Examples
      iex> Strings.trim("  hello  ")
      "hello"
  """
  def trim(string) do
    String.trim(string)
  end

  @doc """
  Function to capitalize a string.
  ## Examples
      iex> Strings.capitalized("hello")
      "Hello"
  """
  def capitalized(string) do
    String.capitalize(string)
  end

  @doc """
  Function to get the first letter of a string.
  ## Examples
      iex> Strings.initial("hello")
      "h"
  """
  def initial(string) do
    trim(string)
    |> String.first()
    |> String.capitalize()
  end

  @doc """
  Function gets first letters of each word in a string.

  ### Examples
      iex> Strings.initials(" John Doe man ")
      "JDM"
  """
  def initials(string) do
    string = trim(string)
    list = String.split(string, " ")

    Enum.map(list, fn item -> initial(item) end)
    |> List.to_string()
  end

  @doc """
  Function to get the initials of a string.
  ## Examples
      iex> Strings.cleaner_initials(" John doe man ")
      "JDM"
  """


  def cleaner_initials(string) do
    trim(string)
    |> String.split(" ")
    |> Enum.map(&initial/1)
    |> Enum.join()
  end
end
