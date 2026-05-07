defmodule Binance.API.Alpha.MarketData do
  @moduledoc false

  @base_urls %{prod_url: "https://www.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Aggregated Trades
  Method: GET
  Path: /bapi/defi/v1/public/alpha-trade/agg-trades
  Requires signature: false
  """
  def aggregated_trades_v1(client, symbol, fromId: fromId, startTime: startTime, endTime: endTime, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/bapi/defi/v1/public/alpha-trade/agg-trades",
          query: [symbol: symbol, fromId: fromId, startTime: startTime, endTime: endTime, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Exchange Info
  Method: GET
  Path: /bapi/defi/v1/public/alpha-trade/get-exchange-info
  Requires signature: false
  """
  def get_exchange_info_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/bapi/defi/v1/public/alpha-trade/get-exchange-info",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Klines
  Variant: Candlestick Data
  Tags: candlestick_data
  Method: GET
  Path: /bapi/defi/v1/public/alpha-trade/klines
  Requires signature: false
  """
  def klines_v1(client, symbol, interval, limit: limit, startTime: startTime, endTime: endTime) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/bapi/defi/v1/public/alpha-trade/klines",
          query: [symbol: symbol, interval: interval, limit: limit, startTime: startTime, endTime: endTime],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Ticker
  Variant: 24hr Price Statistics
  Tags: 24hr_price_statistics
  Method: GET
  Path: /bapi/defi/v1/public/alpha-trade/ticker
  Requires signature: false
  """
  def ticker_v1(client, symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/bapi/defi/v1/public/alpha-trade/ticker",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Token List
  Method: GET
  Path: /bapi/defi/v1/public/wallet-direct/buw/wallet/cex/alpha/all/token/list
  Requires signature: false
  """
  def token_list_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/bapi/defi/v1/public/wallet-direct/buw/wallet/cex/alpha/all/token/list",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end