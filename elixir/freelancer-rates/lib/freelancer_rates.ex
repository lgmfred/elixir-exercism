defmodule FreelancerRates do
  @spec daily_rate(non_neg_integer) :: float
  def daily_rate(hourly_rate) do
    8.0 * hourly_rate
  end

  @spec apply_discount(number, number) :: float
  def apply_discount(before_discount, discount) do
    (100 - discount) / 100 * before_discount
  end

  @spec monthly_rate(number, number) :: integer
  def monthly_rate(hourly_rate, discount) do
    monthly_rate = 22 * daily_rate(hourly_rate)
    discounted = apply_discount(monthly_rate, discount)
    ceil(discounted)
  end

  @spec days_in_budget(number, number, number) :: float
  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate = monthly_rate(hourly_rate, discount) / 22.0
    Float.floor(budget / daily_rate, 1)
  end
end
