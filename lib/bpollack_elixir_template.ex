defmodule BpollackElixirTemplate do

  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))
  
  use MixTemplates,
    name:       :bpollack_elixir_template,
    short_desc: "Template by Brandon Pollack for a good base Elixir project",
    source_dir: "../template"

  
end
