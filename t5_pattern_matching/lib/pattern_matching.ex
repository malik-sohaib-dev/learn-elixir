defmodule PatternMatching do

  def get_equipment_list() do
    [:bag, :tents, :snacks, :hook, :satellite]
  end

  def item_details(:bag) do
    {3, :kg, 1}
  end

  def item_details(:tents) do
    {16, :kg, 1}
  end

  def item_details(:snacks) do
    {1, :kg, 16}
  end

  def item_details(:hook) do
    {4, :kg, 1}
  end

  def item_details(:satellite) do
    {2, :kg, 1}
  end

  def item_details(_other) do
    raise "unknown item"
  end
end
