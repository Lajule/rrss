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
Recommended Desktop Feed Reader Software
FeedDemon enables you to quickly read and gather information from hundreds of web sites - without having to visit them. Don't waste any more time checking your favorite web sites for updates. Instead, use FeedDemon and make them come to you. 

More FeedDemon Information
http://www.feedforall.com/feedforall-partners.htm
```
