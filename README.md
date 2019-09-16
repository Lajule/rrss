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


## Usage

To get a random item from several RSS feeds, simply type :

```sh
rrss https://www.feedforall.com/sample.xml https://www.feedforall.com/sample-feed.xml
RSS Solutions for Meteorologists
FeedForAll helps Meteorologists communicate with the general public about storm warnings and weather alerts, in specific regions. Using RSS meteorologists are able to quickly disseminate urgent and life threatening weather warnings.


Uses Include:
Weather Alerts

Plotting Storms

School Cancellations
http://www.feedforall.com/weather.htm

```
