# <%= @project_name_camel_case %>

**TODO: Add description**

## Directory structure

    * lib/** - elixir code
    * notebooks/*.livemd - livebooks (can run in the context of the application using [Mix.install](https://hexdocs.pm/livebook/use_cases.html#documentation-with-mix-install)
        * The contained example is set up to interact with the project code.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `<%= @project_name %>` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:<%= @project_name %>, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at https://hexdocs.pm/<%= @project_name_camel_case%>.

