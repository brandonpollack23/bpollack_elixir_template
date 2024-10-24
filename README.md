# BpollackElixirTemplate

Basic template for me to use for my elixir projects.  It sets up a few things:

* Extra applications in :dev mode (runtime tools for dbg/trace, observer)
* Developer tooling (credo, dialyzer through dialyxer, exsync to sync repl, recon for debugging, ex_doc for easy doc gen)
* Simple tasks to build and type check etc
    * _build_ - type check, compile, and run credo (with failures allowed)
    * _test_ - build (above) and test
    * _stddocs_ - open stdlib docs (offline)
    * _docs_  - open docs for local files in browser (offline) ala `cargo doc --open`


## Installation

Setup [MixTemplates](https://hexdocs.pm/mix_templates/MixTemplates.html#functions) and install this template

```sh
mix archive.install hex mix_templates
mix archive.install hex mix_generator
mix template.install hex bpollack_elixir_template
```

## Usage

```sh
mix gen bpollack_elixir_template [DIR]
```
