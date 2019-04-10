defmodule Rest.MixProject do
  use Mix.Project

  def project do
    [
      app: :rest,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Rest.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:maru, "~> 0.14.0-pre.1"},
      {:plug_cowboy, "~> 2.0"},
      {:jason, "~> 1.1"},
      {:exsync, "~> 0.2", only: :dev}
    ]
  end
end
