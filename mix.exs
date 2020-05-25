defmodule HomecamMedia.Mixfile do
  use Mix.Project

  def project do
    [
      app: :homecam_media,
      version: "0.0.1",
      elixir: "~> 1.10.3",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {HomecamMedia.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.3.4"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_ecto, "~> 3.2"},
      {:postgrex, ">= 0.0.0"},
      {:gettext, "~> 0.11"},
      {:plug_cowboy, "~> 1.0"},
      #{:mariaex, "~> 0.9.1"},
      #{:plsm, "~> 2.3.2"}
      {:porcelain, "~> 2.0"},
      {:timex, "~> 3.6"},
      {:timex_ecto, "~> 3.4"},
      {:dotenv, "~> 3.0"},
      {:httpotion, "~> 3.1.0"},
      {:httpoison, "~> 1.6"},
      {:ecto_network, "~> 0.7.0"}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      #"test": ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
