defmodule Binance.API.MarginTrading.Transfer do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec query_max_transfer_out_amount_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Max Transfer-Out Amount
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/maxTransferable
  Requires signature: true
  Required: asset
  Optional: isolatedSymbol, recvWindow
  """
  def query_max_transfer_out_amount_v1(client, asset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/maxTransferable",
          query: [
            asset: asset,
            isolatedSymbol: Keyword.get(opts, :isolatedSymbol),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_cross_margin_transfer_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Cross Margin Transfer History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/transfer
  Requires signature: true
  Optional: asset, type, startTime, endTime, current, size, isolatedSymbol, recvWindow
  """
  def get_cross_margin_transfer_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/transfer",
          query: [
            asset: Keyword.get(opts, :asset),
            type: Keyword.get(opts, :type),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            size: Keyword.get(opts, :size),
            isolatedSymbol: Keyword.get(opts, :isolatedSymbol),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end
end
