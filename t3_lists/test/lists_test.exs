defmodule ListsTest do
  use ExUnit.Case
  doctest(Lists)

  describe "Removing item from list V3" do
    test "remove_item_v3/2" do
      assert Lists.remove_item_v3(["JS", "Ruby", "Elixir", "TS", "Python"], "Ruby") == [
               "JS",
               "Elixir",
               "TS",
               "Python"
             ]
    end
  end
end
