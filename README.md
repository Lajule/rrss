# RRSS

A terminal application to get a random item from an RSS feed.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `rrss` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:rrss, "~> 0.1.0"}
  ]
end
```

## Build

You can build the application with following mix task `mix escript.build`, see [documentation](https://hexdocs.pm/mix/master/Mix.Tasks.Escript.Build.html) for more help.

## Docker

You can run the application in a Docker container using:

```sh
docker run -it --rm -v $PWD:/usr/src/rrss -v $PWD:/root -w /usr/src/rrss elixir iex -S mix
```
