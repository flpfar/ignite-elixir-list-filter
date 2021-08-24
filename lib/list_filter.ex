defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.filter(fn elem -> is_an_odd_num?(elem) end)
    |> Enum.count
  end

  def is_an_odd_num?(string) do
    case Integer.parse(string) do
      {num, _} -> Integer.is_odd(num)
      _ -> false
    end
  end
end
