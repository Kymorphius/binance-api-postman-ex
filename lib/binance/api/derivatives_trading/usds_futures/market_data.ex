defmodule Binance.API.DerivativesTrading.UsdsFutures.MarketData do
  @moduledoc false

  @base_urls %{prod_url: "https://fapi.binance.com", testnet_url: "https://testnet.binancefuture.com", demo_url: "https://demo-fapi.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Compressed/Aggregate Trades List
  Method: GET
  Path: /fapi/v1/aggTrades
  Requires signature: false
  """
  def compressed_aggregate_trades_list_v1(client, symbol, fromId: fromId, startTime: startTime, endTime: endTime, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/aggTrades",
          query: [symbol: symbol, fromId: fromId, startTime: startTime, endTime: endTime, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Multi-Assets Mode Asset Index
  Method: GET
  Path: /fapi/v1/assetIndex
  Requires signature: false
  """
  def multi_assets_mode_asset_index_v1(client, symbol: symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/assetIndex",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Index Price Constituents
  Method: GET
  Path: /fapi/v1/constituents
  Requires signature: false
  """
  def query_index_price_constituents_v1(client, symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/constituents",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Continuous Contract Kline/Candlestick Data
  Method: GET
  Path: /fapi/v1/continuousKlines
  Requires signature: false
  """
  def continuous_contract_kline_candlestick_data_v1(client, pair, contractType, interval, startTime: startTime, endTime: endTime, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/continuousKlines",
          query: [pair: pair, contractType: contractType, interval: interval, startTime: startTime, endTime: endTime, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Order Book
  Method: GET
  Path: /fapi/v1/depth
  Requires signature: false
  """
  def order_book_v1(client, symbol, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/depth",
          query: [symbol: symbol, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Exchange Information
  Method: GET
  Path: /fapi/v1/exchangeInfo
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
          url: "/fapi/v1/exchangeInfo",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Funding Rate Info
  Method: GET
  Path: /fapi/v1/fundingInfo
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
          url: "/fapi/v1/fundingInfo",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Funding Rate History
  Method: GET
  Path: /fapi/v1/fundingRate
  Requires signature: false
  """
  def get_funding_rate_history_v1(client, symbol: symbol, startTime: startTime, endTime: endTime, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/fundingRate",
          query: [symbol: symbol, startTime: startTime, endTime: endTime, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Old Trades Lookup
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /fapi/v1/historicalTrades
  Requires signature: false
  """
  def old_trades_lookup_v1(client, symbol, limit: limit, fromId: fromId) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/historicalTrades",
          query: [symbol: symbol, limit: limit, fromId: fromId],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Composite Index Symbol Information
  Method: GET
  Path: /fapi/v1/indexInfo
  Requires signature: false
  """
  def composite_index_symbol_information_v1(client, symbol: symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/indexInfo",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Index Price Kline/Candlestick Data
  Method: GET
  Path: /fapi/v1/indexPriceKlines
  Requires signature: false
  """
  def index_price_kline_candlestick_data_v1(client, pair, interval, startTime: startTime, endTime: endTime, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/indexPriceKlines",
          query: [pair: pair, interval: interval, startTime: startTime, endTime: endTime, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Insurance Fund Balance Snapshot
  Method: GET
  Path: /fapi/v1/insuranceBalance
  Requires signature: false
  """
  def query_insurance_fund_balance_snapshot_v1(client, symbol: symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/insuranceBalance",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Kline/Candlestick Data
  Method: GET
  Path: /fapi/v1/klines
  Requires signature: false
  """
  def kline_candlestick_data_v1(client, symbol, interval, startTime: startTime, endTime: endTime, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/klines",
          query: [symbol: symbol, interval: interval, startTime: startTime, endTime: endTime, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Mark Price Kline/Candlestick Data
  Method: GET
  Path: /fapi/v1/markPriceKlines
  Requires signature: false
  """
  def mark_price_kline_candlestick_data_v1(client, symbol, interval, startTime: startTime, endTime: endTime, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/markPriceKlines",
          query: [symbol: symbol, interval: interval, startTime: startTime, endTime: endTime, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Open Interest
  Method: GET
  Path: /fapi/v1/openInterest
  Requires signature: false
  """
  def open_interest_v1(client, symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/openInterest",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Test Connectivity
  Method: GET
  Path: /fapi/v1/ping
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
          url: "/fapi/v1/ping",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Mark Price
  Method: GET
  Path: /fapi/v1/premiumIndex
  Requires signature: false
  """
  def mark_price_v1(client, symbol: symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/premiumIndex",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Premium index Kline Data
  Method: GET
  Path: /fapi/v1/premiumIndexKlines
  Requires signature: false
  """
  def premium_index_kline_data_v1(client, symbol, interval, startTime: startTime, endTime: endTime, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/premiumIndexKlines",
          query: [symbol: symbol, interval: interval, startTime: startTime, endTime: endTime, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  RPI Order Book
  Method: GET
  Path: /fapi/v1/rpiDepth
  Requires signature: false
  """
  def rpi_order_book_v1(client, symbol, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/rpiDepth",
          query: [symbol: symbol, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  ADL Risk
  Method: GET
  Path: /fapi/v1/symbolAdlRisk
  Requires signature: false
  """
  def adl_risk_v1(client, symbol: symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/symbolAdlRisk",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  24hr Ticker Price Change Statistics
  Method: GET
  Path: /fapi/v1/ticker/24hr
  Requires signature: false
  """
  def x_24hr_ticker_price_change_statistics_v1(client, symbol: symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/ticker/24hr",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Symbol Order Book Ticker
  Method: GET
  Path: /fapi/v1/ticker/bookTicker
  Requires signature: false
  """
  def symbol_order_book_ticker_v1(client, symbol: symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/ticker/bookTicker",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Symbol Price Ticker
  Method: GET
  Path: /fapi/v1/ticker/price
  Requires signature: false
  """
  def symbol_price_ticker_v1(client, symbol: symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/ticker/price",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Check Server Time
  Method: GET
  Path: /fapi/v1/time
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
          url: "/fapi/v1/time",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Recent Trades List
  Method: GET
  Path: /fapi/v1/trades
  Requires signature: false
  """
  def recent_trades_list_v1(client, symbol, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/trades",
          query: [symbol: symbol, limit: limit],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Trading Schedule
  Method: GET
  Path: /fapi/v1/tradingSchedule
  Requires signature: false
  """
  def trading_schedule_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/tradingSchedule",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Symbol Price Ticker V2
  Method: GET
  Path: /fapi/v2/ticker/price
  Requires signature: false
  """
  def symbol_price_ticker_v2(client, symbol: symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v2/ticker/price",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Basis
  Method: GET
  Path: /futures/data/basis
  Requires signature: false
  """
  def basis(client, pair, contractType, period, limit: limit, startTime: startTime, endTime: endTime) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/basis",
          query: [pair: pair, contractType: contractType, period: period, limit: limit, startTime: startTime, endTime: endTime],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Quarterly Contract Settlement Price
  Method: GET
  Path: /futures/data/delivery-price
  Requires signature: false
  """
  def quarterly_contract_settlement_price(client, pair) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/delivery-price",
          query: [pair: pair],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Long/Short Ratio
  Method: GET
  Path: /futures/data/globalLongShortAccountRatio
  Requires signature: false
  """
  def long_short_ratio(client, symbol, period, limit: limit, startTime: startTime, endTime: endTime) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/globalLongShortAccountRatio",
          query: [symbol: symbol, period: period, limit: limit, startTime: startTime, endTime: endTime],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Open Interest Statistics
  Method: GET
  Path: /futures/data/openInterestHist
  Requires signature: false
  """
  def open_interest_statistics(client, symbol, period, limit: limit, startTime: startTime, endTime: endTime) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/openInterestHist",
          query: [symbol: symbol, period: period, limit: limit, startTime: startTime, endTime: endTime],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Taker Buy/Sell Volume
  Method: GET
  Path: /futures/data/takerlongshortRatio
  Requires signature: false
  """
  def taker_buy_sell_volume(client, symbol, period, limit: limit, startTime: startTime, endTime: endTime) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/takerlongshortRatio",
          query: [symbol: symbol, period: period, limit: limit, startTime: startTime, endTime: endTime],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Top Trader Long/Short Ratio
  Variant: Accounts
  Tags: accounts
  Method: GET
  Path: /futures/data/topLongShortAccountRatio
  Requires signature: false
  """
  def top_trader_long_short_ratio_accounts(client, symbol, period, limit: limit, startTime: startTime, endTime: endTime) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/topLongShortAccountRatio",
          query: [symbol: symbol, period: period, limit: limit, startTime: startTime, endTime: endTime],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Top Trader Long/Short Ratio
  Variant: Positions
  Tags: positions
  Method: GET
  Path: /futures/data/topLongShortPositionRatio
  Requires signature: false
  """
  def top_trader_long_short_ratio_positions(client, symbol, period, limit: limit, startTime: startTime, endTime: endTime) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/futures/data/topLongShortPositionRatio",
          query: [symbol: symbol, period: period, limit: limit, startTime: startTime, endTime: endTime],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end