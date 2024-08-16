defmodule MathOperationsTest do
  use ExUnit.Case
  doctest MathOperations

  test "add/2" do
    assert MathOperations.add(1, 2) == 3
  end

  test "subtract/2" do
    assert MathOperations.subtract(2, 1) == 1
  end

  test "multiply/2" do
    assert MathOperations.multiply(2, 3) == 6
  end

  test "divide/2" do
    # assert MathOperations.divide(50, 101) == 0.4950495
    assert MathOperations.divide(6, 3) == 2.0
  end

  test "round/1" do
    assert MathOperations.round(1.234) == 1.24
  end
end
