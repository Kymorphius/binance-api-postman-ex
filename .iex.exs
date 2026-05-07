alias BinanceApiPostmanEx
alias Hack

IO.puts("""

Binance API Postman Ex IEx helpers

Code generation:
  BinanceApiPostmanEx.pull_repo()
  BinanceApiPostmanEx.generate_raw_api("lib/binance_api_postman_repo/collections/Binance Spot API.json")

Mix task shortcuts:
  mix pull_repo
  mix generate_raw_api --all

Hack examples:
  Hack.spot_average_price("BTCUSDT")
  Hack.spot_ticker_price("BTCUSDT")
  Hack.spot_order_book("BTCUSDT")
  Hack.futures_mark_price("ETHUSDT")
  Hack.futures_ticker_price("ETHUSDT")
  Hack.futures_order_book("ETHUSDT")
  Hack.futures_new_limit_order("ETHUSDT", "BUY", "0.01", "2400", positionSide: "LONG")
  Hack.futures_query_order("ETHUSDT", orderId: 123)
  Hack.futures_cancel_order("ETHUSDT", orderId: 123)
  Hack.fiat_deposit("BTC", "BANK", "100", "test")

Environment file:
  Copy .env.example to .env and fill in BINANCE_API_KEY, BINANCE_API_SECRET, BINANCE_ENV.
""")

Logger.configure(level: :debug)
