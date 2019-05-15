defmodule RRSS.Spinner do
  use GenServer

  @name :rrss_spinner

  @frames ~w[/ - \\ |]

  def start do
    GenServer.start(__MODULE__, 0, name: @name)
  end

  def stop do
    if Process.whereis(@name) do
      GenServer.call(@name, :stop)
    else
      :ok
    end
  end

  def init(count) do
    {:ok, tick(count)}
  end

  def handle_info(:tick, count) do
    {:noreply, tick(count)}
  end

  def handle_call(:stop, _from, count) do
    IO.write([IO.ANSI.cursor_left(1), IO.ANSI.clear_line()])
    {:stop, :normal, :ok, count}
  end

  defp tick(count) do
    index = rem(count, length(@frames))

    IO.write([
      IO.ANSI.cursor_left(1),
      IO.ANSI.clear_line(),
      Enum.at(@frames, index)
    ])

    Process.send_after(self(), :tick, 100)
    count + 1
  end
end
