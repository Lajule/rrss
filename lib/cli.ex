defmodule RRSS.CLI do
  def main(args) do
    RRSS.Spinner.start()
    responses = Enum.map(args, &(RRSS.HTTP.get(&1)))
    RRSS.Spinner.stop()

    RRSS.IO.puts(responses)
  end
end
