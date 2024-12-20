defmodule BpollackElixirTemplate.Mixfile do
  use Mix.Project

  @name    :bpollack_elixir_template
  @version "0.1.1"

  @deps [
    { :mix_templates,  ">0.0.0" },
    { :ex_doc,         ">0.0.0",  only: [:dev, :test] },
  ]

  @maintainers ["Brandon Pollack"]
  @github      "https://github.com/brandonpollack23/#{@name}"

  @description """
  Brandon Pollack's basic elixir template for new projects.
  """
  
  # ------------------------------------------------------------
  
  def project do
    in_production = Mix.env == :prod
    [
      app:     @name,
      version: @version,
      deps:    @deps,
      elixir:  "~> 1.4",
      package: package(),
      description:     @description,
      build_embedded:  in_production,
      start_permanent: in_production,
    ]
  end

  defp package do
    [
      name:        @name,
      files:       ["lib", "mix.exs", "README.md", "LICENSE.md", "template"],
      maintainers: @maintainers,
      licenses:    ["MIT"],
      links:       %{
        "GitHub" => @github,
      },
#      extra:       %{ "type" => "a_template_for_mix_gen" },
    ]
  end
  
end
