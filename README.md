# ErlportSpike

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `erlport_spike` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:erlport_spike, "~> 0.1.0"}
  ]
end
```

deps/erlport/rebar.config:

Needed to remove warnings_as_errors complier option to work with OPT 21

Because of this i checked in the erlport version to deps


Example usage
```elixir
# start repl
$ iex -S mix

> myrub = ErlportSpike.start_ruby
{:ok, #PID<0.207.0>}
> ErlportSpike.call_ruby_method(myrub)
[
  #PID<0.207.0>,
  [:ok, "hello", "i did something", 14852],
  [:ok, "hello", "i did something", 14852]
> ErlportSpike.call_ruby_method(myrub)
[
  #PID<0.207.0>,
  [:ok, "hello", "i did something", 14852],
  [:ok, "hello", "i did something", 14852]
]
```
Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/erlport_spike](https://hexdocs.pm/erlport_spike).

