defmodule Binance.API.Spot.Market do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com", testnet_url: "https://testnet.binance.vision", demo_url: "https://demo-api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Compressed/Aggregate trades list
  Method: GET
  Path: /api/v3/aggTrades
  Requires signature: false
  """
  def compressed_aggregate_trades_list_v3(client, symbol, fromId: fromId, startTime: startTime, endTime: endTime, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/aggTrades",
          query: [symbol: symbol, fromId: fromId, startTime: startTime, endTime: endTime, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Current average price
  Method: GET
  Path: /api/v3/avgPrice
  Requires signature: false
  """
  def current_average_price_v3(client, symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/avgPrice",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Order book
  Method: GET
  Path: /api/v3/depth
  Requires signature: false
  """
  def order_book_v3(client, symbol, limit: limit, symbolStatus: symbolStatus) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/depth",
          query: [symbol: symbol, limit: limit, symbolStatus: symbolStatus],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Old trade lookup
  Method: GET
  Path: /api/v3/historicalTrades
  Requires signature: false
  """
  def old_trade_lookup_v3(client, symbol, limit: limit, fromId: fromId) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/historicalTrades",
          query: [symbol: symbol, limit: limit, fromId: fromId],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Kline/Candlestick data
  Method: GET
  Path: /api/v3/klines
  Requires signature: false
  """
  def kline_candlestick_data_v3(client, symbol, interval, startTime: startTime, endTime: endTime, timeZone: timeZone, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/klines",
          query: [symbol: symbol, interval: interval, startTime: startTime, endTime: endTime, timeZone: timeZone, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Reference Price
  Method: GET
  Path: /api/v3/referencePrice
  Requires signature: false
  """
  def query_reference_price_v3(client, symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/referencePrice",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Reference Price Calculation
  Method: GET
  Path: /api/v3/referencePrice/calculation
  Requires signature: false
  """
  def query_reference_price_calculation_v3(client, symbol, symbolStatus: symbolStatus) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/referencePrice/calculation",
          query: [symbol: symbol, symbolStatus: symbolStatus],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Rolling window price change statistics
  Method: GET
  Path: /api/v3/ticker
  Requires signature: false
  """
  def rolling_window_price_change_statistics_v3(client, symbol: symbol, symbols: symbols, windowSize: windowSize, type: type, symbolStatus: symbolStatus) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/ticker",
          query: [symbol: symbol, symbols: symbols, windowSize: windowSize, type: type, symbolStatus: symbolStatus],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  24hr ticker price change statistics
  Method: GET
  Path: /api/v3/ticker/24hr
  Requires signature: false
  """
  def x_24hr_ticker_price_change_statistics_v3(client, symbol: symbol, symbols: symbols, type: type, symbolStatus: symbolStatus) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/ticker/24hr",
          query: [symbol: symbol, symbols: symbols, type: type, symbolStatus: symbolStatus],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Symbol order book ticker
  Method: GET
  Path: /api/v3/ticker/bookTicker
  Requires signature: false
  """
  def symbol_order_book_ticker_v3(client, symbol: symbol, symbols: symbols, symbolStatus: symbolStatus) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/ticker/bookTicker",
          query: [symbol: symbol, symbols: symbols, symbolStatus: symbolStatus],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Symbol price ticker
  Method: GET
  Path: /api/v3/ticker/price
  Requires signature: false
  """
  def symbol_price_ticker_v3(client, symbol: symbol, symbols: symbols, symbolStatus: symbolStatus) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/ticker/price",
          query: [symbol: symbol, symbols: symbols, symbolStatus: symbolStatus],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Trading Day Ticker
  Method: GET
  Path: /api/v3/ticker/tradingDay
  Requires signature: false
  """
  def trading_day_ticker_v3(client, symbol: symbol, symbols: symbols, timeZone: timeZone, type: type, symbolStatus: symbolStatus) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/ticker/tradingDay",
          query: [symbol: symbol, symbols: symbols, timeZone: timeZone, type: type, symbolStatus: symbolStatus],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Recent trades list
  Method: GET
  Path: /api/v3/trades
  Requires signature: false
  """
  def recent_trades_list_v3(client, symbol, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/trades",
          query: [symbol: symbol, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  UIKlines
  Method: GET
  Path: /api/v3/uiKlines
  Requires signature: false
  """
  def uiklines_v3(client, symbol, interval, startTime: startTime, endTime: endTime, timeZone: timeZone, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/uiKlines",
          query: [symbol: symbol, interval: interval, startTime: startTime, endTime: endTime, timeZone: timeZone, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end