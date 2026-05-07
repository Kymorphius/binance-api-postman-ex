defmodule BinanceApiPostmanEx do
  @moduledoc """
  Utilities for preparing the Binance Postman repository locally.
  """

  @repo_url "https://github.com/binance/binance-api-postman"
  @repo_dir Path.expand("binance_api_postman_repo", __DIR__)

  @doc """
  Clones or updates the Binance Postman repository into `lib/binance_api_postman_repo`.
  """
  def pull_repo do
    File.mkdir_p!(Path.dirname(@repo_dir))

    cond do
      File.dir?(@repo_dir) and File.dir?(Path.join(@repo_dir, ".git")) ->
        {output, status} = System.cmd("git", ["-C", @repo_dir, "pull", "--ff-only"], stderr_to_stdout: true)
        {:ok, %{action: :updated, status: status, output: output}}

      File.exists?(@repo_dir) ->
        File.rm_rf!(@repo_dir)
        clone_repo()

      true ->
        clone_repo()
    end
  end

  def parse_collection_file(path) do
    BinanceApiPostmanRepoParser.parse_collection_file(path)
  end

  def generate_raw_api(collection_path) do
    BinanceApiPostmanGenerator.generate_file(collection_path)
  end

  defp clone_repo do
    {output, status} =
      System.cmd("git", ["clone", @repo_url, @repo_dir], stderr_to_stdout: true)

    {:ok, %{action: :cloned, status: status, output: output}}
  end
end
