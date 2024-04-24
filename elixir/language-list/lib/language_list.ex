defmodule LanguageList do
  @spec new :: list
  def new(), do: []

  @spec add(list, String.t()) :: list
  def add(list, language), do: [language | list]

  @spec remove(list) :: list
  def remove([_head | tail]), do: tail

  @spec first(list) :: list
  def first([head | _tail]), do: head

  @spec count(list) :: integer
  def count(list), do: length(list)

  @spec functional_list?(list) :: boolean
  def functional_list?(list), do: "Elixir" in list
end
