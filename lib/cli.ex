defmodule RRSS.CLI do
  def main(args) do
    RRSS.Spinner.start()
    response = RRSS.get(Enum.random(args))
    RRSS.Spinner.stop()

    RRSS.IO.puts()
  end
end
