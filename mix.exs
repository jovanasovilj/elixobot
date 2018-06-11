defmodule Elixobot.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixobot,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Elixobot.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:slack, "~> 0.14.0"},
      {:websocket_client,
        git: "https://github.com/jeremyong/websocket_client"}
    ]
  end
end
