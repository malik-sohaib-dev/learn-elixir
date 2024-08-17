defmodule WeightLimit do
  defp max_weight_lb(), do: 50

  defp kg_to_lb(kg), do: kg * 2.20462

  defp total_weight([]), do: 0

  defp total_weight([head | tail]) do
    (PatternMatching.item_details(head) |> elem(0)) + total_weight(tail)
  end

  @doc """
  This function calculates the total weight of the equipment list and compares it with the maximum weight limit.
  If the total weight is less than or equal to the maximum weight limit, it returns true, otherwise false.

  ## Examples

      iex> WeightLimit.guage_weight(PatternMatching.get_equipment_list())
      false

      iex> WeightLimit.guage_weight([:bag, :tents, :snacks])
      true
  """

  def guage_weight(list) do
    total_weight = total_weight(list) |> kg_to_lb()
    IO.puts(total_weight)

    if total_weight <= max_weight_lb() do
      true
    else
      false
    end
  end
end
