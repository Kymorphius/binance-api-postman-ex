defmodule Mix.Tasks.PullRepo do
  use Mix.Task

  @shortdoc "Clone or update the Binance API Postman repository"

  @moduledoc """
  Clones or updates the Binance Postman repository into `lib/binance_api_postman_repo`.
  """

  @impl Mix.Task
  def run(_args) do
    Mix.Task.run("app.start")

    case BinanceApiPostmanEx.pull_repo() do
      {:ok, %{action: action, status: 0, output: output}} ->
        Mix.shell().info("Repository #{action} successfully.")
        Mix.shell().info(output)

      {:ok, %{action: action, status: status, output: output}} ->
        Mix.raise("Repository #{action} failed with status #{status}:\n#{output}")
    end
  end
end
