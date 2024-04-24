defmodule NameBadge do
  @spec print(integer | nil, String.t(), String.t() | nil) :: String.t()
  def print(id \\ nil, name, department \\ nil) do
    id = if is_nil(id), do: "", else: "[#{id}] - "
    department = if is_nil(department), do: "OWNER", else: department
    id <> "#{name}" <> " - " <> "#{String.upcase(department)}"
  end
end
