defmodule Guards do
  @moduledoc """
  Documentation for `Guards`.
  """

  def type(val) when is_integer(val), do: :integer
  def type(val) when is_float(val), do: :float
  def type(val) when not is_integer(val), do: :not_number

  def is_single_digit(val) when (is_integer(val) or is_float(val)) and val >= 0 and val < 10, do: true
  def is_single_digit(_), do: false

  defguardp is_even(val) when is_integer(val) and rem(val, 2) == 0

  def check_even_num(val \\ :empty)
  def check_even_num(val) when is_even(val), do: true
  def check_even_num(val) when not is_even(val), do: false
end
