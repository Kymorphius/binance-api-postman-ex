alias BinanceApiPostmanEx
alias Binance.Example

IO.puts("""

Binance API Postman Ex IEx helpers

Code generation:
  BinanceApiPostmanEx.pull_repo()
  BinanceApiPostmanEx.generate_raw_api("lib/binance_api_postman_repo/collections/Binance Spot API.json")

Mix task shortcuts:
  mix pull_repo
  mix generate_raw_api --all

Binance.Example examples:
  Binance.Example.spot_average_price("BTCUSDT")
  Binance.Example.spot_ticker_price("BTCUSDT")
  Binance.Example.spot_order_book("BTCUSDT")
  Binance.Example.futures_mark_price("ETHUSDT")
  Binance.Example.futures_ticker_price("ETHUSDT")
  Binance.Example.futures_order_book("ETHUSDT")
  Binance.Example.futures_new_limit_order("ETHUSDT", "BUY", "0.01", "2400", positionSide: "LONG")
  Binance.Example.futures_close_long_market("ETHUSDT", "0.01", positionSide: "LONG")
  Binance.Example.futures_close_short_market("ETHUSDT", "0.01", positionSide: "SHORT")
  Binance.Example.futures_query_order("ETHUSDT", orderId: 123)
  Binance.Example.futures_cancel_order("ETHUSDT", orderId: 123)
  Binance.Example.fiat_deposit("BTC", "BANK", "100", "test")

Environment file:
  Copy .env.example to .env and fill in BINANCE_API_KEY, BINANCE_API_SECRET, BINANCE_ENV.
""")

Logger.configure(level: :debug)
