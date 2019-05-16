defmodule RRSS.HTTP do
  use HTTPoison.Base

  def process_response_body(body) do
    body
    |> Fiet.parse!()
    |> Map.fetch!(:items)
    |> Enum.random()
    |> Map.update!(:description, &Floki.text(&1))
  end
end
