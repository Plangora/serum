defmodule MySite.MixFile do
  use Mix.Project

  def project do
    [
      app: :my_site,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:serum]
    ]
  end

  defp deps do
    [
      {:serum, "~> 1.5"},
      {:microscope, "1.3.0", override: true}
    ]
  end
end
