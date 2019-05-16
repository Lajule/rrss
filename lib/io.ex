defmodule RRSS.IO do
  def puts(responses) do
    Enum.each(responses, &puts_response(&1))
  end

  defp puts_response(%HTTPoison.Response{status_code: 200, body: body}) do
    IO.puts(
      [
        IO.ANSI.underline(),
        body.title,
        IO.ANSI.reset()
      ]
      |> Enum.join()
    )

    IO.puts(body.description)
    IO.puts(body.link)
  end
end
