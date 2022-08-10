defmodule Rules do
  @doc """
  Defines if Pac-Man eats a ghost
  """
  @spec eat_ghost?(boolean, boolean) :: boolean
  def eat_ghost?(power_pellet_active, touching_ghost) do
    power_pellet_active and touching_ghost
  end

  @doc """
  Defines if Pac-Man scores
  """
  @spec score?(boolean, boolean) :: boolean
  def score?(touching_power_pellet, touching_dot) do
    touching_power_pellet or touching_dot
  end

  @doc """
  Defines if Pac-Man loses
  """
  @spec lose?(boolean, boolean) :: boolean
  def lose?(power_pellet_active, touching_ghost) do
    unless power_pellet_active == false && touching_ghost == true do
      false
    else
      true
    end
  end

  @doc """
  Defines if Pac-Man wins
  """
  @spec win?(boolean, boolean, boolean) :: boolean
  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    won = lose?(power_pellet_active, touching_ghost)
    has_eaten_all_dots and not won
  end
end
