defmodule T3StringsTest do
  use ExUnit.Case
  doctest Strings

  test "greets the world" do
    assert Strings.hello() == :world
  end
end
