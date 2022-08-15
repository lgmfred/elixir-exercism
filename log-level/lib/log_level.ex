defmodule LogLevel do
  @spec to_label(0..5, boolean) :: atom
  def to_label(level, legacy?) do
    cond do
      level == 0 and legacy? == false -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 and legacy? == false -> :fatal
      true -> :unknown
    end
  end

  @spec alert_recipient(integer, boolean) :: :ops | :dev1 | :dev2
  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)
    cond do
      label == :error or label == :fatal -> :ops
      label == :unknown and legacy? == true -> :dev1
      label == :unknown -> :dev2
      true -> nil
    end
  end
end
