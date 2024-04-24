defmodule GuessingGame do
  @spec compare(integer, integer | :no_guess) :: String.t()

  def compare(secret, guess \\ :no_guess)

  def compare(_secret, :no_guess) do
    "Make a guess"
  end

  def compare(secret, guess) when secret === guess do
    "Correct"
  end

  def compare(secret, guess) when abs(secret - guess) === 1 do
    "So close"
  end

  def compare(secret, guess) when secret <= guess do
    "Too high"
  end

  def compare(secret, guess) when secret >= guess do
    "Too low"
  end
end
