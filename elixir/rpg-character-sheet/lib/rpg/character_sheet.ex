defmodule RPG.CharacterSheet do
  @spec welcome :: String.t()
  def welcome() do
    IO.puts("Welcome! Let's fill out your character sheet together.")
  end

  @spec welcome :: String.t()
  def ask_name() do
    IO.gets("What is your character's name?\n")
    |> String.trim()
  end

  @spec welcome :: String.t()
  def ask_class() do
    IO.gets("What is your character's class?\n")
    |> String.trim()
  end

  @spec welcome :: integer()
  def ask_level() do
    IO.gets("What is your character's level?\n")
    |> String.trim()
    |> String.to_integer()
  end

  @spec run :: String.t()
  def run() do
    welcome()

    %{name: ask_name(), class: ask_class(), level: ask_level()}
    |> IO.inspect(label: "Your character")
  end
end
