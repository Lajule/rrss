defmodule RRSS.MixProject do
  use Mix.Project

  def project do
    [
      app: :rrss,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:fiet, "~> 0.2.1"},
      {:floki, "~> 0.21.0"},
      {:httpoison, "~> 1.4"}
    ]
  end

  defp escript do
    [
      main_module: RRSS.CLI
    ]
  end
end
