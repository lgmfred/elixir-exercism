defmodule BirdCount do
  @spec today(list) :: integer
  def today([]), do: nil
  def today([head | _tail]), do: head

  @spec increment_day_count(list) :: list
  def increment_day_count([]), do: [1]
  def increment_day_count([head | tail]), do: [head + 1 | tail]

  @spec has_day_without_birds?(list) :: boolean
  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _tail]), do: true
  def has_day_without_birds?([_head | tail]), do: has_day_without_birds?(tail)

  @spec total(list) :: integer
  def total([]), do: 0
  def total([head | tail]), do: head + total(tail)

  @spec busy_days(list) :: integer
  def busy_days([]), do: 0
  def busy_days([head | tail]) when head >= 5, do: 1 + busy_days(tail)
  def busy_days([_head | tail]), do: 0 + busy_days(tail)
end
