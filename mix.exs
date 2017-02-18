defmodule Money.Mixfile do
  use Mix.Project

  @version "1.2.2"
  @github_url "https://github.com/Nitrino/elixir_money"

  def project do
    [
      app: :elixir_money,
      name: "Money",
      version: @version,
      elixir: "~> 1.0",
      deps: deps(),
      source_url: @github_url,
      docs: docs(),
      description: description(),
      package: package(),
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      # Soft dependencies
      {:ecto, "~> 1.0 or ~> 2.0 or ~> 2.1", optional: true},
      {:phoenix_html, "~> 2.0", optional: true},

      # Code style
      {:credo, "~> 0.5", only: [:dev, :test]},

      # Docs
      {:ex_doc, "~> 0.14", only: [:dev, :docs]},
      {:remix, "~> 0.0.1", only: :dev}
    ]
  end

  defp description do
    """
    Elixir library for easy working with Money.
    It is fork and development of library [money](https://github.com/liuggio/money)
    """
  end

  defp docs do
    [
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/elixir_money",
      main: "Money",
      source_url: @github_url,
      extras: ["README.md", "CONTRIBUTING.md"]
    ]
  end

  defp package do
    [
     maintainers: ["Petr Stepchenko"],
     licenses: ["MIT"],
     links: %{"GitHub" => @github_url}]
  end
end
