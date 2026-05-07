defmodule Binance.API.Convert.MarketData do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec query_order_quantity_precision_per_asset_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query order quantity precision per asset
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/convert/assetInfo
  Requires signature: true
  Optional: recvWindow
  """
  def query_order_quantity_precision_per_asset_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/convert/assetInfo",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec list_all_convert_pairs_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  List All Convert Pairs
  Method: GET
  Path: /sapi/v1/convert/exchangeInfo
  Requires signature: false
  Optional: fromAsset, toAsset
  """
  def list_all_convert_pairs_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/convert/exchangeInfo",
          query: [fromAsset: Keyword.get(opts, :fromAsset), toAsset: Keyword.get(opts, :toAsset)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end