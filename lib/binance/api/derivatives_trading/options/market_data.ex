defmodule Binance.API.DerivativesTrading.Options.MarketData do
  @moduledoc false

  @base_urls %{prod_url: "https://eapi.binance.com", testnet_url: "https://testnet.binancefuture.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec recent_block_trades_list_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Recent Block Trades List
  Method: GET
  Path: /eapi/v1/blockTrades
  Requires signature: false
  Optional: symbol, limit
  """
  def recent_block_trades_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/blockTrades",
          query: [symbol: Keyword.get(opts, :symbol), limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec order_book_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Order Book
  Method: GET
  Path: /eapi/v1/depth
  Requires signature: false
  Required: symbol
  Optional: limit
  """
  def order_book_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/depth",
          query: [symbol: symbol, limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec exchange_information_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Exchange Information
  Method: GET
  Path: /eapi/v1/exchangeInfo
  Requires signature: false
  """
  def exchange_information_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/exchangeInfo",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec historical_exercise_records_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Historical Exercise Records
  Method: GET
  Path: /eapi/v1/exerciseHistory
  Requires signature: false
  Optional: underlying, startTime, endTime, limit
  """
  def historical_exercise_records_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/exerciseHistory",
          query: [underlying: Keyword.get(opts, :underlying), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec index_price_v1(Binance.Client.t(), term()) :: {:ok, term()} | {:error, term()}
  @doc """
  Index Price
  Method: GET
  Path: /eapi/v1/index
  Requires signature: false
  Required: underlying
  """
  def index_price_v1(client, underlying) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/index",
          query: [underlying: underlying],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec kline_candlestick_data_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Kline/Candlestick Data
  Method: GET
  Path: /eapi/v1/klines
  Requires signature: false
  Required: symbol, interval
  Optional: startTime, endTime, limit
  """
  def kline_candlestick_data_v1(client, symbol, interval, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/klines",
          query: [symbol: symbol, interval: interval, startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec option_mark_price_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Option Mark Price
  Method: GET
  Path: /eapi/v1/mark
  Requires signature: false
  Optional: symbol
  """
  def option_mark_price_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/mark",
          query: [symbol: Keyword.get(opts, :symbol)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec open_interest_v1(Binance.Client.t(), term(), term()) :: {:ok, term()} | {:error, term()}
  @doc """
  Open Interest
  Method: GET
  Path: /eapi/v1/openInterest
  Requires signature: false
  Required: underlyingAsset, expiration
  """
  def open_interest_v1(client, underlyingAsset, expiration) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/openInterest",
          query: [underlyingAsset: underlyingAsset, expiration: expiration],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec test_connectivity_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Test Connectivity
  Method: GET
  Path: /eapi/v1/ping
  Requires signature: false
  """
  def test_connectivity_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/ping",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec x_24hr_ticker_price_change_statistics_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  24hr Ticker Price Change Statistics
  Method: GET
  Path: /eapi/v1/ticker
  Requires signature: false
  Optional: symbol
  """
  def x_24hr_ticker_price_change_statistics_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/ticker",
          query: [symbol: Keyword.get(opts, :symbol)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec check_server_time_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Check Server Time
  Method: GET
  Path: /eapi/v1/time
  Requires signature: false
  """
  def check_server_time_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/time",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec recent_trades_list_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Recent Trades List
  Method: GET
  Path: /eapi/v1/trades
  Requires signature: false
  Required: symbol
  Optional: limit
  """
  def recent_trades_list_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/trades",
          query: [symbol: symbol, limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end