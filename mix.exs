defmodule Vitals.MixProject do
  use Mix.Project

  def project do
    [
      app: :vitals,
      version: "0.0.1",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      docs: [extras: ["README.md"]],
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  def description, do: "WIP - Monitors and reports health of configured components"

  def package do
    [
      name: :vitals,
      maintainers: ["JohnnyT"],
      licenses: ["MIT"],
      docs: [extras: ["README.md"]],
      links: %{"GitHub" => "https://github.com/riddler/vitals"}
    ]
  end
end
