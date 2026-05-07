defmodule Binance.API.DerivativesTrading.PortfolioMarginPro.MarketData do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Query Portfolio Margin Asset Index Price
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/portfolio/asset-index-price
  Requires signature: false
  """
  def query_portfolio_margin_asset_index_price_v1(client, asset: asset) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/asset-index-price",
          query: [asset: asset],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Portfolio Margin Collateral Rate
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/portfolio/collateralRate
  Requires signature: false
  """
  def portfolio_margin_collateral_rate_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/collateralRate",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Portfolio Margin Asset Leverage
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/margin-asset-leverage
  Requires signature: true
  """
  def get_portfolio_margin_asset_leverage_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/margin-asset-leverage",
          query: [timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Portfolio Margin Pro Tiered Collateral Rate
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/portfolio/collateralRate
  Requires signature: true
  """
  def portfolio_margin_pro_tiered_collateral_rate_v2(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/portfolio/collateralRate",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end