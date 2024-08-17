defmodule Lists do
  @moduledoc """
  Documentation for `Lists`.
  """

  @doc """
  Returns a list of programming languages.

  ## Examples

      iex> Lists.get_list()
      ["JS", "Ruby", "Elixir", "TS", "Python"]
  """
  def get_list do
    ["JS", "Ruby", "Elixir", "TS", "Python"]
  end

  @doc """
  Returns a list of items with index.

  ## Examples

      iex> Lists.get_list_with_index(["JS", "Ruby", "Elixir", "TS", "Python"])
      [{"JS", 0}, {"Ruby", 1}, {"Elixir", 2}, {"TS", 3}, {"Python", 4}]
  """

  def get_list_with_index(list) do
    Enum.with_index(list)
  end

  @doc """
  Returns the first item of the list.

  ## Examples

      iex> Lists.get_head(["JS", "Ruby", "Elixir", "TS", "Python"])
      "JS"
  """

  def get_head(list) do
    hd(list)
  end

  @doc """
  Returns the list tail.

  ## Examples

      iex> Lists.get_tail(["JS", "Ruby", "Elixir", "TS", "Python"])
      ["Ruby", "Elixir", "TS", "Python"]
  """
  def get_tail(list) do
    tl(list)
  end

  @doc """
  Appends an item to the list.

  ## Examples

      iex> Lists.add_item(["JS", "Ruby", "Elixir", "TS", "Python"], "Java")
      ["JS", "Ruby", "Elixir", "TS", "Python", "Java"]
  """
  def add_item(list, item) do
    # This should be the fastest with O(n) time complexity
    list ++ [item]
  end

  @doc """
  Appends an item to the list (slower).

  ## Examples

      iex> Lists.add_item_v2(["JS", "Ruby", "Elixir", "TS", "Python"], "Java")
      ["JS", "Ruby", "Elixir", "TS", "Python", "Java"]
  """
  def add_item_v2(list, item) do
    # This will be performing 2 reverse operations with O(n) time complexity each and one O(1) as well
    [item | Enum.reverse(list)] |> Enum.reverse()
  end

  @doc """
  Removes an item from the list (Slow).

  ## Examples

      iex> Lists.remove_item(["JS", "Ruby", "Elixir", "TS", "Python"], "Ruby")
      ["JS", "Elixir", "TS", "Python"]
  """
  def remove_item(list, item) do
    Enum.filter(list, fn x -> x != item end)
  end

  @doc """
  Removes an item from the list (Slow V2).

  ## Examples

      iex> Lists.remove_item_v2(["JS", "Ruby", "Elixir", "TS", "Python"], "Ruby")
      ["JS", "Elixir", "TS", "Python"]
  """

  def remove_item_v2(list, item) do
    Enum.reject(list, fn x -> x == item end)
  end

  @doc """
  Removes an item from the list (Fast).

  ## Examples

      iex> Lists.remove_item_v3(["JS", "Ruby", "Elixir", "TS", "Python"], "Ruby")
      ["JS", "Elixir", "TS", "Python"]
  """
  def remove_item_v3(list, item) do
    List.delete(list, item)
  end

  @doc """
  Removes an item from the list at a given index.

  ## Examples

      iex> Lists.remove_item_at_index(["JS", "Ruby", "Elixir", "TS", "Python"], 1)
      ["JS", "Elixir", "TS", "Python"]
  """

  def remove_item_at_index(list, index) do
    # This should be the fastest
    List.delete_at(list, index)
  end

  @doc """
  Checks if an item is present in the list.

  ## Examples

      iex> Lists.is_present(["JS", "Ruby", "Elixir", "TS", "Python"], "Ruby")
      true
  """
  def is_present(list, item) do
    item in list
  end

  @doc """
  Returns the length of the list.

  ## Examples

      iex> Lists.list_length(["JS", "Ruby", "Elixir", "TS", "Python"])
      5
  """
  def list_length(list) do
    length(list)
  end
end
