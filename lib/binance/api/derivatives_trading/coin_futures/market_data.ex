defmodule Binance.API.DerivativesTrading.CoinFutures.MarketData do
  @moduledoc false

  @base_urls %{prod_url: "https://dapi.binance.com", testnet_url: "https://testnet.binancefuture.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec compressed_aggregate_trades_list_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Compressed/Aggregate Trades List
  Method: GET
  Path: /dapi/v1/aggTrades
  Requires signature: false
  Required: symbol
  Optional: fromId, startTime, endTime, limit
  """
  def compressed_aggregate_trades_list_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/aggTrades",
          query: [symbol: symbol, fromId: Keyword.get(opts, :fromId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_index_price_constituents_v1(Binance.Client.t(), term()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Index Price Constituents
  Method: GET
  Path: /dapi/v1/constituents
  Requires signature: false
  Required: symbol
  """
  def query_index_price_constituents_v1(client, symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/constituents",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec continuous_contract_kline_candlestick_data_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Continuous Contract Kline/Candlestick Data
  Method: GET
  Path: /dapi/v1/continuousKlines
  Requires signature: false
  Required: pair, contractType, interval
  Optional: startTime, endTime, limit
  """
  def continuous_contract_kline_candlestick_data_v1(client, pair, contractType, interval, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/continuousKlines",
          query: [pair: pair, contractType: contractType, interval: interval, startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit)],
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
  Path: /dapi/v1/depth
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
          url: "/dapi/v1/depth",
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
  Path: /dapi/v1/exchangeInfo
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
          url: "/dapi/v1/exchangeInfo",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_funding_rate_info_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Funding Rate Info
  Method: GET
  Path: /dapi/v1/fundingInfo
  Requires signature: false
  """
  def get_funding_rate_info_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/fundingInfo",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_funding_rate_history_of_perpetual_futures_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Funding Rate History of Perpetual Futures
  Method: GET
  Path: /dapi/v1/fundingRate
  Requires signature: false
  Required: symbol
  Optional: startTime, endTime, limit
  """
  def get_funding_rate_history_of_perpetual_futures_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/fundingRate",
          query: [symbol: symbol, startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec old_trades_lookup_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Old Trades Lookup
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /dapi/v1/historicalTrades
  Requires signature: false
  Required: symbol
  Optional: limit, fromId
  """
  def old_trades_lookup_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/historicalTrades",
          query: [symbol: symbol, limit: Keyword.get(opts, :limit), fromId: Keyword.get(opts, :fromId)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec index_price_kline_candlestick_data_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Index Price Kline/Candlestick Data
  Method: GET
  Path: /dapi/v1/indexPriceKlines
  Requires signature: false
  Required: pair, interval
  Optional: startTime, endTime, limit
  """
  def index_price_kline_candlestick_data_v1(client, pair, interval, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/indexPriceKlines",
          query: [pair: pair, interval: interval, startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit)],
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
  Path: /dapi/v1/klines
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
          url: "/dapi/v1/klines",
          query: [symbol: symbol, interval: interval, startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec mark_price_kline_candlestick_data_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Mark Price Kline/Candlestick Data
  Method: GET
  Path: /dapi/v1/markPriceKlines
  Requires signature: false
  Required: symbol, interval
  Optional: startTime, endTime, limit
  """
  def mark_price_kline_candlestick_data_v1(client, symbol, interval, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/markPriceKlines",
          query: [symbol: symbol, interval: interval, startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec open_interest_v1(Binance.Client.t(), term()) :: {:ok, term()} | {:error, term()}
  @doc """
  Open Interest
  Method: GET
  Path: /dapi/v1/openInterest
  Requires signature: false
  Required: symbol
  """
  def open_interest_v1(client, symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/openInterest",
          query: [symbol: symbol],
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
  Path: /dapi/v1/ping
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
          url: "/dapi/v1/ping",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec index_price_and_mark_price_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Index Price and Mark Price
  Method: GET
  Path: /dapi/v1/premiumIndex
  Requires signature: false
  Optional: symbol, pair
  """
  def index_price_and_mark_price_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/premiumIndex",
          query: [symbol: Keyword.get(opts, :symbol), pair: Keyword.get(opts, :pair)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec premium_index_kline_data_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Premium index Kline Data
  Method: GET
  Path: /dapi/v1/premiumIndexKlines
  Requires signature: false
  Required: symbol, interval
  Optional: startTime, endTime, limit
  """
  def premium_index_kline_data_v1(client, symbol, interval, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/premiumIndexKlines",
          query: [symbol: symbol, interval: interval, startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec x_24hr_ticker_price_change_statistics_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  24hr Ticker Price Change Statistics
  Method: GET
  Path: /dapi/v1/ticker/24hr
  Requires signature: false
  Optional: symbol, pair
  """
  def x_24hr_ticker_price_change_statistics_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/ticker/24hr",
          query: [symbol: Keyword.get(opts, :symbol), pair: Keyword.get(opts, :pair)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec symbol_order_book_ticker_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Symbol Order Book Ticker
  Method: GET
  Path: /dapi/v1/ticker/bookTicker
  Requires signature: false
  Optional: symbol, pair
  """
  def symbol_order_book_ticker_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/ticker/bookTicker",
          query: [symbol: Keyword.get(opts, :symbol), pair: Keyword.get(opts, :pair)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec symbol_price_ticker_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Symbol Price Ticker
  Method: GET
  Path: /dapi/v1/ticker/price
  Requires signature: false
  Optional: symbol, pair
  """
  def symbol_price_ticker_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/ticker/price",
          query: [symbol: Keyword.get(opts, :symbol), pair: Keyword.get(opts, :pair)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec check_server_time_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Check Server time
  Method: GET
  Path: /dapi/v1/time
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
          url: "/dapi/v1/time",
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
  Path: /dapi/v1/trades
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
          url: "/dapi/v1/trades",
          query: [symbol: symbol, limit: Keyword.get(opts, :limit)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec basis(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Basis
  Method: GET
  Path: /futures/data/basis
  Requires signature: false
  Required: pair, contractType, period
  Optional: limit, startTime, endTime
  """
  def basis(client, pair, contractType, period, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/basis",
          query: [pair: pair, contractType: contractType, period: period, limit: Keyword.get(opts, :limit), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec long_short_ratio(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Long/Short Ratio
  Method: GET
  Path: /futures/data/globalLongShortAccountRatio
  Requires signature: false
  Required: pair, period
  Optional: limit, startTime, endTime
  """
  def long_short_ratio(client, pair, period, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/globalLongShortAccountRatio",
          query: [pair: pair, period: period, limit: Keyword.get(opts, :limit), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec open_interest_statistics(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Open Interest Statistics
  Method: GET
  Path: /futures/data/openInterestHist
  Requires signature: false
  Required: pair, contractType, period
  Optional: limit, startTime, endTime
  """
  def open_interest_statistics(client, pair, contractType, period, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/openInterestHist",
          query: [pair: pair, contractType: contractType, period: period, limit: Keyword.get(opts, :limit), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec taker_buy_sell_volume(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Taker Buy/Sell Volume
  Method: GET
  Path: /futures/data/takerBuySellVol
  Requires signature: false
  Required: pair, contractType, period
  Optional: limit, startTime, endTime
  """
  def taker_buy_sell_volume(client, pair, contractType, period, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/takerBuySellVol",
          query: [pair: pair, contractType: contractType, period: period, limit: Keyword.get(opts, :limit), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec top_trader_long_short_ratio_accounts(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Top Trader Long/Short Ratio
  Variant: Accounts
  Tags: accounts
  Method: GET
  Path: /futures/data/topLongShortAccountRatio
  Requires signature: false
  Required: symbol, period
  Optional: limit, startTime, endTime
  """
  def top_trader_long_short_ratio_accounts(client, symbol, period, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/topLongShortAccountRatio",
          query: [symbol: symbol, period: period, limit: Keyword.get(opts, :limit), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec top_trader_long_short_ratio_positions(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Top Trader Long/Short Ratio
  Variant: Positions
  Tags: positions
  Method: GET
  Path: /futures/data/topLongShortPositionRatio
  Requires signature: false
  Required: pair, period
  Optional: limit, startTime, endTime
  """
  def top_trader_long_short_ratio_positions(client, pair, period, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/topLongShortPositionRatio",
          query: [pair: pair, period: period, limit: Keyword.get(opts, :limit), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime)],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end