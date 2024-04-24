defmodule KitchenCalculator do
  @spec get_volume(tuple) :: number
  def get_volume({_unit, volume}), do: volume

  @spec to_milliliter(tuple) :: tuple
  def to_milliliter({unit, volume}) do
    case {unit, volume} do
      {:milliliter, volume} -> {:milliliter, volume}
      {:cup, volume} -> {:milliliter, volume * 240}
      {:fluid_ounce, volume} -> {:milliliter, volume * 30}
      {:teaspoon, volume} -> {:milliliter, volume * 5}
      {:tablespoon, volume} -> {:milliliter, volume * 15}
    end
  end

  @spec from_milliliter(tuple, atom) :: tuple
  def from_milliliter({_unit, volume}, to_unit) do
    case to_unit do
      :milliliter -> {:milliliter, volume}
      :cup -> {:cup, volume / 240}
      :fluid_ounce -> {:fluid_ounce, volume / 30}
      :teaspoon -> {:teaspoon, volume / 5}
      :tablespoon -> {:tablespoon, volume / 15}
    end
  end

  @spec convert(tuple, atom) :: tuple
  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
