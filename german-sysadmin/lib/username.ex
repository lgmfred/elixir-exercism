defmodule Username do
  @spec sanitize(charlist()) :: charlist()

  def sanitize([]), do: []

  def sanitize([head | tail]) do
    case head do
      ?ä -> 'ae' ++ sanitize(tail)
      ?ö -> 'oe' ++ sanitize(tail)
      ?ü -> 'ue' ++ sanitize(tail)
      ?ß -> 'ss' ++ sanitize(tail)
      ?_ -> [head | sanitize(tail)]
      head when head in ?a..?z -> [head | sanitize(tail)]
      _ -> sanitize(tail)
    end
  end
end
