defmodule Binance.API.Spot.Market do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com", testnet_url: "https://testnet.binance.vision", demo_url: "https://demo-api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec compressed_aggregate_trades_list_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Compressed/Aggregate trades list
  Method: GET
  Path: /api/v3/aggTrades
  Requires signature: false
  Required: symbol
  Optional: fromId, startTime, endTime, limit
  """
  def compressed_aggregate_trades_list_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/aggTrades",
          query: [symbol: symbol, fromId: Keyword.get(opts, :fromId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec current_average_price_v3(Binance.Client.t(), term()) :: {:ok, term()} | {:error, term()}
  @doc """
  Current average price
  Method: GET
  Path: /api/v3/avgPrice
  Requires signature: false
  Required: symbol
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
  
  @spec order_book_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Order book
  Method: GET
  Path: /api/v3/depth
  Requires signature: false
  Required: symbol
  Optional: limit, symbolStatus
  """
  def order_book_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/depth",
          query: [symbol: symbol, limit: Keyword.get(opts, :limit), symbolStatus: Keyword.get(opts, :symbolStatus)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec old_trade_lookup_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Old trade lookup
  Method: GET
  Path: /api/v3/historicalTrades
  Requires signature: false
  Required: symbol
  Optional: limit, fromId
  """
  def old_trade_lookup_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/historicalTrades",
          query: [symbol: symbol, limit: Keyword.get(opts, :limit), fromId: Keyword.get(opts, :fromId)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec kline_candlestick_data_v3(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Kline/Candlestick data
  Method: GET
  Path: /api/v3/klines
  Requires signature: false
  Required: symbol, interval
  Optional: startTime, endTime, timeZone, limit
  """
  def kline_candlestick_data_v3(client, symbol, interval, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/klines",
          query: [symbol: symbol, interval: interval, startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), timeZone: Keyword.get(opts, :timeZone), limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_reference_price_v3(Binance.Client.t(), term()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Reference Price
  Method: GET
  Path: /api/v3/referencePrice
  Requires signature: false
  Required: symbol
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
  
  @spec query_reference_price_calculation_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Reference Price Calculation
  Method: GET
  Path: /api/v3/referencePrice/calculation
  Requires signature: false
  Required: symbol
  Optional: symbolStatus
  """
  def query_reference_price_calculation_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/referencePrice/calculation",
          query: [symbol: symbol, symbolStatus: Keyword.get(opts, :symbolStatus)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec rolling_window_price_change_statistics_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Rolling window price change statistics
  Method: GET
  Path: /api/v3/ticker
  Requires signature: false
  Optional: symbol, symbols, windowSize, type, symbolStatus
  """
  def rolling_window_price_change_statistics_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/ticker",
          query: [symbol: Keyword.get(opts, :symbol), symbols: Keyword.get(opts, :symbols), windowSize: Keyword.get(opts, :windowSize), type: Keyword.get(opts, :type), symbolStatus: Keyword.get(opts, :symbolStatus)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec x_24hr_ticker_price_change_statistics_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  24hr ticker price change statistics
  Method: GET
  Path: /api/v3/ticker/24hr
  Requires signature: false
  Optional: symbol, symbols, type, symbolStatus
  """
  def x_24hr_ticker_price_change_statistics_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/ticker/24hr",
          query: [symbol: Keyword.get(opts, :symbol), symbols: Keyword.get(opts, :symbols), type: Keyword.get(opts, :type), symbolStatus: Keyword.get(opts, :symbolStatus)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec symbol_order_book_ticker_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Symbol order book ticker
  Method: GET
  Path: /api/v3/ticker/bookTicker
  Requires signature: false
  Optional: symbol, symbols, symbolStatus
  """
  def symbol_order_book_ticker_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/ticker/bookTicker",
          query: [symbol: Keyword.get(opts, :symbol), symbols: Keyword.get(opts, :symbols), symbolStatus: Keyword.get(opts, :symbolStatus)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec symbol_price_ticker_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Symbol price ticker
  Method: GET
  Path: /api/v3/ticker/price
  Requires signature: false
  Optional: symbol, symbols, symbolStatus
  """
  def symbol_price_ticker_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/ticker/price",
          query: [symbol: Keyword.get(opts, :symbol), symbols: Keyword.get(opts, :symbols), symbolStatus: Keyword.get(opts, :symbolStatus)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec trading_day_ticker_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Trading Day Ticker
  Method: GET
  Path: /api/v3/ticker/tradingDay
  Requires signature: false
  Optional: symbol, symbols, timeZone, type, symbolStatus
  """
  def trading_day_ticker_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/ticker/tradingDay",
          query: [symbol: Keyword.get(opts, :symbol), symbols: Keyword.get(opts, :symbols), timeZone: Keyword.get(opts, :timeZone), type: Keyword.get(opts, :type), symbolStatus: Keyword.get(opts, :symbolStatus)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec recent_trades_list_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Recent trades list
  Method: GET
  Path: /api/v3/trades
  Requires signature: false
  Required: symbol
  Optional: limit
  """
  def recent_trades_list_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/trades",
          query: [symbol: symbol, limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec uiklines_v3(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  UIKlines
  Method: GET
  Path: /api/v3/uiKlines
  Requires signature: false
  Required: symbol, interval
  Optional: startTime, endTime, timeZone, limit
  """
  def uiklines_v3(client, symbol, interval, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/uiKlines",
          query: [symbol: symbol, interval: interval, startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), timeZone: Keyword.get(opts, :timeZone), limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end