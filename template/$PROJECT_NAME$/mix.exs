defmodule <%= @project_name_camel_case %>.MixProject do
  use Mix.Project

  def project do
    [
      app: :ch7,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      elixirc_options: [
        warnings_as_errors: true
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: extra_applications(Mix.env())
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Static code analysis and suggestions
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      # Dialyzer type checking
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      # Sync files with active repl
      {:exsync, "~> 0.4", only: :dev},
      # Generate documentation
      {:ex_doc, "~> 0.34", only: :dev, runtime: false},
      # dbg but a bit better, local only
      {:recon, "~> 2.5", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp extra_applications(:dev) do
    [:logger, :runtime_tools, :observer]
  end

  defp extra_applications(_) do
    [:logger]
  end

  def aliases do
    [
      build: ["dialyzer", "compile", task_with_allowed_failure("credo")],
      test: ["build", "test"],
      stddocs: ["hex.docs offline elixir"],
      docs: ["docs --open -f html"]
    ]
  end

  defp task_with_allowed_failure(task) when is_bitstring(task) do
    task_with_allowed_failure([task])
  end

  defp task_with_allowed_failure(task) when is_list(task) do
    fn _ ->
      System.cmd("mix", task, into: IO.stream(:stdio, :line), stderr_to_stdout: true)
    end
  end
end
