defmodule Binance.Example do
  @moduledoc """
  Small examples for calling generated raw Binance API modules manually.
  """

  alias Binance.Client
  alias Binance.API.Fiat
  alias Binance.API.Spot.Market
  alias Binance.API.DerivativesTrading.UsdsFutures.MarketData, as: FuturesMarketData
  alias Binance.API.DerivativesTrading.UsdsFutures.Trade, as: FuturesTrade

  @commands [
    {"mix pull_repo", "Clone or update the Binance Postman repository into lib/binance_api_postman_repo"},
    {"mix generate_raw_api --all", "Generate raw API modules from all Binance Postman collections"},
    {"mix compile", "Compile the project after code changes"},
    {"mix test", "Run the test suite"},
    {"iex -S mix", "Open an interactive shell with the project loaded"}
  ]

  def commands do
    @commands
  end

  def prompt do
    Enum.map_join(@commands, "\n", fn {command, description} ->
      "- #{command} — #{description}"
    end)
  end

  def sample_client do
    load_dotenv()

    api_key = System.fetch_env!("BINANCE_API_KEY")
    api_secret = System.fetch_env!("BINANCE_API_SECRET")
    env = System.get_env("BINANCE_ENV", "demo") |> String.to_atom()

    Client.new(api_key, api_secret, env)
  end
  
  def spot_average_price(symbol) do
    Market.current_average_price_v3(sample_client(), symbol)
  end

  def spot_ticker_price(symbol) do
    Market.symbol_price_ticker_v3(sample_client(), symbol: symbol, symbols: nil, symbolStatus: nil)
  end

  def spot_order_book(symbol, limit \\ 5) do
    Market.order_book_v3(sample_client(), symbol, limit: limit, symbolStatus: nil)
  end

  def fiat_deposit(currency, api_payment_method, amount, ext) do
    Fiat.deposit_v1(
      sample_client(),
      currency,
      api_payment_method,
      amount,
      recvWindow: 5000,
      ext: ext
    )
  end

  def futures_mark_price(symbol) do
    FuturesMarketData.mark_price_v1(sample_client(), symbol: symbol)
  end

  def futures_ticker_price(symbol) do
    FuturesMarketData.symbol_price_ticker_v1(sample_client(), symbol: symbol)
  end

  def futures_order_book(symbol, limit \\ 5) do
    FuturesMarketData.order_book_v1(sample_client(), symbol, limit: limit)
  end

  def futures_new_limit_order(symbol, side, quantity, price, opts \\ []) do
    FuturesTrade.new_order_v1(
      sample_client(),
      symbol,
      side,
      "LIMIT",
      futures_limit_order_opts(quantity, price, opts)
    )
  end

  def futures_close_long_market(symbol, quantity, opts \\ []) do
    FuturesTrade.new_order_v1(
      sample_client(),
      symbol,
      "SELL",
      "MARKET",
      [
        positionSide: Keyword.get(opts, :positionSide),
        quantity: quantity,
        price: Keyword.get(opts, :price),
        newClientOrderId: Keyword.get(opts, :newClientOrderId),
        newOrderRespType: Keyword.get(opts, :newOrderRespType, "RESULT"),
        selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode),
        recvWindow: Keyword.get(opts, :recvWindow, 5000)
      ]
    )
  end

  def futures_close_short_market(symbol, quantity, opts \\ []) do
    FuturesTrade.new_order_v1(
      sample_client(),
      symbol,
      "BUY",
      "MARKET",
      [
        positionSide: Keyword.get(opts, :positionSide),
        quantity: quantity,
        price: Keyword.get(opts, :price),
        newClientOrderId: Keyword.get(opts, :newClientOrderId),
        newOrderRespType: Keyword.get(opts, :newOrderRespType, "RESULT"),
        selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode),
        recvWindow: Keyword.get(opts, :recvWindow, 5000)
      ]
    )
  end

  def futures_query_order(symbol, opts) do
    FuturesTrade.query_order_v1(
      sample_client(),
      symbol,
      orderId: Keyword.get(opts, :orderId),
      origClientOrderId: Keyword.get(opts, :origClientOrderId),
      recvWindow: Keyword.get(opts, :recvWindow, 5000)
    )
  end

  def futures_cancel_order(symbol, opts) do
    FuturesTrade.cancel_order_v1(
      sample_client(),
      symbol,
      orderId: Keyword.get(opts, :orderId),
      origClientOrderId: Keyword.get(opts, :origClientOrderId),
      recvWindow: Keyword.get(opts, :recvWindow, 5000)
    )
  end

  defp futures_limit_order_opts(quantity, price, opts) do
    [
      positionSide: Keyword.get(opts, :positionSide),
      timeInForce: Keyword.get(opts, :timeInForce, "GTC"),
      quantity: quantity,
      reduceOnly: Keyword.get(opts, :reduceOnly),
      price: price,
      newClientOrderId: Keyword.get(opts, :newClientOrderId),
      newOrderRespType: Keyword.get(opts, :newOrderRespType, "RESULT"),
      priceMatch: Keyword.get(opts, :priceMatch),
      selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode),
      goodTillDate: Keyword.get(opts, :goodTillDate),
      recvWindow: Keyword.get(opts, :recvWindow, 5000)
    ]
  end

  defp load_dotenv(path \\ ".env") do
    if File.exists?(path) do
      path
      |> File.stream!()
      |> Stream.map(&String.trim/1)
      |> Stream.reject(&(&1 == "" or String.starts_with?(&1, "#")))
      |> Enum.each(&put_env_line/1)
    end

    :ok
  end

  defp put_env_line(line) do
    case String.split(line, "=", parts: 2) do
      [key, value] -> System.put_env(String.trim(key), trim_env_value(value))
      _ -> :ok
    end
  end

  defp trim_env_value(value) do
    value
    |> String.trim()
    |> String.trim_leading("\"")
    |> String.trim_trailing("\"")
    |> String.trim_leading("'")
    |> String.trim_trailing("'")
  end
end
