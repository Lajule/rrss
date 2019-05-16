defmodule RRSS.IO do
  def puts(responses) do
    Enum.each(responses, &(puts_response(&1)))
  end

  defp puts_response(response) do
    case response do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        IO.puts([
          IO.ANSI.underline(),
          body.title,
          IO.ANSI.reset()
        ] |> Enum.join())
      {:ok, %HTTPoison.Response{status_code: 404}} -> IO.puts("")
      {:error, %HTTPoison.Error{reason: reason}} -> IO.puts(reason)
    end
  end
end
