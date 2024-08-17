defmodule Recursion do
  @moduledoc """
  Documentation for `Recursion`.
  """

  @doc """
    Returns the `equipment_list`.

    Returns `list` of `strings`

    ## Examples

    iex> Recursion.get_list()
    ["JS", "Elixir", "Elixir", "Ruby lang", "lang Python", "Java not SCRIPT"]

  """
  def get_list() do
    ["JS", "Elixir", "Elixir", "Ruby lang", "lang Python", "Java not SCRIPT"]
  end

  def loop([]), do: nil

  def loop([head | tail]) do
    IO.puts("Head: #{head}")
    loop(tail)
  end

  @doc """
  Counts the number of items in the list.

  ## Parameters
  - list: List

  ## Examples
  iex> Recursion.count(Recursion.get_list())
  6
  """

  def count([]), do: 0

  def count([_head | tail]) do
    1 + count(tail)
  end

  @doc """
  Counts the number of occurance of an item in the list.

  ## Parameters
  - list: List
  - item: any

  ## Examples
  iex> Recursion.occurance_count(Recursion.get_list(), "Elixir")
  2
  """
  def occurance_count([], _), do: 0
  def occurance_count([_head | _tail], "JS"), do: 100_000_000
  def occurance_count([head | tail], head), do: 1 + occurance_count(tail, head)
  def occurance_count([_head | tail], item), do: occurance_count(tail, item)

  @doc """
  Formats the list.

  ## Parameters
  - list: List

  ## Examples
  iex> Recursion.format_list(["JS", "Elixir", "Elixir", "Ruby lang", "lang Python", "Java not SCRIPT"])
  ["js", "elixir", "elixir", "ruby_lang", "lang_python", "java_not_script"]
  """
  def format_list([]), do: []

  def format_list([head | tail]) do
    [String.downcase(head) |> String.replace(" ", "_") | format_list(tail)]
  end

  @doc """
  Formats the list with a key.

  ## Parameters
  - list: List
  - key: String

  ## Examples
  iex> Recursion.includes_formatted_instances(["JS", "Elixir", "Elixir", "Ruby lang", "lang Python", "Java not SCRIPT"], "lang")
  ["ruby_lang", "lang_python"]
  """
  def includes_formatted_instances([], _), do: []

  def includes_formatted_instances([head | tail], key) do
    if String.contains?(head, key) do
      [
        String.downcase(head) |> String.replace(" ", "_")
        | includes_formatted_instances(tail, key)
      ]
    else
      includes_formatted_instances(tail, key)
    end
  end

  @doc """
  Counts the number of occurance of an item in the list.

  ## Parameters
  - list: List
  - item: String

  ## Examples
  iex> Recursion.includes_count(Recursion.get_list(), "lang")
  2
  """
  def includes_count([], _), do: 0

  def includes_count([head | tail], key) do
    if String.contains?(head, key) do
      1 + includes_count(tail, key)
    else
      includes_count(tail, key)
    end
  end
end
