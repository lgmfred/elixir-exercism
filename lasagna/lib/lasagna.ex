defmodule Lasagna do
  @doc """
  Returns expected oven time in minutes.
  """
  @spec expected_minutes_in_oven :: non_neg_integer
  def expected_minutes_in_oven do
    40
  end

  @doc """
  Calculates the remaining oven time in minutes.
  """
  @spec remaining_minutes_in_oven(non_neg_integer) :: non_neg_integer
  def remaining_minutes_in_oven(minutes) do
    expected_minutes = expected_minutes_in_oven()
    expected_minutes - minutes
  end

  @doc """
  Calculates the preparation time in minutes
  """
  @spec preparation_time_in_minutes(non_neg_integer) :: non_neg_integer
  def preparation_time_in_minutes(number_of_layers) do
    number_of_layers * 2
  end

  @doc """
  Calculate the total working time in minutes
  """
  @spec total_time_in_minutes(non_neg_integer, non_neg_integer) :: integer
  def total_time_in_minutes(layers, minutes_taken) do
    layers_time = preparation_time_in_minutes(layers)
    layers_time + minutes_taken
  end

  @doc """
  Creates a notification that the lasagna is ready
  """
  @spec alarm :: String.t()
  def alarm do
    "Ding!"
  end
end
