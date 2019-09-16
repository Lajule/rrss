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
RSS Solutions for Restaurants
FeedForAll helps Restaurant's communicate with customers. Let your customers know the latest specials or events.


RSS feed uses include:
Daily Specials 

Entertainment 

Calendar of Events 
http://www.feedforall.com/restaurant.htm
RSS Resources
Be sure to take a look at some of our favorite RSS Resources
RSS Specifications
Blog Connection


http://www.feedforall.com
```
