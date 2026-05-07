# BinanceApiPostmanEx

Generate Elixir raw API modules from the official Binance API Postman collections.

This project focuses on a thin, generated raw API layer:

- clone or update Binance's `binance-api-postman` repository;
- parse Postman collection files;
- generate Elixir modules under `lib/binance/api/**`;
- build signed and unsigned Binance REST requests;
- provide small `Hack` examples for manual IEx usage.

## Requirements

- Elixir `~> 1.19`
- Mix
- Network access to GitHub and Binance endpoints

## Setup

Fetch dependencies:

```bash
mix deps.get
```

Compile the project:

```bash
mix compile
```

## Pull Binance Postman collections

Clone or update the official Binance API Postman repository into `lib/binance_api_postman_repo`:

```bash
mix pull_repo
```

This uses:

```elixir
BinanceApiPostmanEx.pull_repo()
```

## Generate raw API modules

Generate all raw API modules from all collections:

```bash
mix generate_raw_api --all
```

Or use the helper script, which first clears the generated API directory and then regenerates everything:

```bash
./scripts/generate_raw_api.sh
```

Generate from one collection file:

```elixir
BinanceApiPostmanEx.generate_raw_api("lib/binance_api_postman_repo/collections/Binance Spot API.json")
```

Generated modules are written under `lib/binance/api/`, organized as a layered tree. For example:

```text
lib/binance/api/
├── spot/
│   ├── market.ex
│   ├── trade.ex
│   └── account.ex
├── derivatives_trading/
│   ├── usds_futures/
│   │   ├── market_data.ex
│   │   ├── trade.ex
│   │   └── account.ex
│   └── coin_futures/
│       ├── market_data.ex
│       ├── trade.ex
│       └── account.ex
└── ...
```

Example raw API calls:

```elixir
Binance.API.Spot.Market.current_average_price_v3(client, "BTCUSDT")
Binance.API.Spot.Market.symbol_price_ticker_v3(client, symbol: "BTCUSDT", symbols: nil, symbolStatus: nil)
Binance.API.Spot.Market.order_book_v3(client, "BTCUSDT", limit: 5, symbolStatus: nil)

Binance.API.DerivativesTrading.UsdsFutures.MarketData.mark_price_v1(client, symbol: "ETHUSDT")
Binance.API.DerivativesTrading.UsdsFutures.MarketData.symbol_price_ticker_v1(client, symbol: "ETHUSDT")
Binance.API.DerivativesTrading.UsdsFutures.MarketData.order_book_v1(client, symbol: "ETHUSDT", limit: 5)

Binance.API.DerivativesTrading.UsdsFutures.Trade.new_order_v1(client, "ETHUSDT", "BUY", "LIMIT", [positionSide: "LONG", timeInForce: "GTC", quantity: "0.01", price: "2400", newOrderRespType: "RESULT", recvWindow: 5000])
Binance.API.DerivativesTrading.UsdsFutures.Trade.new_order_v1(client, "ETHUSDT", "SELL", "MARKET", [positionSide: "LONG", quantity: "0.01", reduceOnly: true, newOrderRespType: "RESULT", recvWindow: 5000])
Binance.API.DerivativesTrading.UsdsFutures.Trade.new_order_v1(client, "ETHUSDT", "BUY", "MARKET", [positionSide: "SHORT", quantity: "0.01", reduceOnly: true, newOrderRespType: "RESULT", recvWindow: 5000])

Binance.API.Fiat.deposit_v1(client, "BTC", "BANK", "100", recvWindow: 5000, ext: "test")
```

## Local credentials

For local manual testing, copy `.env.example` to `.env`:

```bash
cp .env.example .env
```

Fill in your credentials:

```bash
BINANCE_API_KEY=your_api_key
BINANCE_API_SECRET=your_api_secret
BINANCE_ENV=demo
```

`.env` is ignored by git.

Supported environment values depend on the generated collection base URLs. The demo futures examples use `demo`.

## IEx helpers

Start an interactive shell:

```bash
iex -S mix
```

`.iex.exs` prints common commands and aliases `BinanceApiPostmanEx` and `Binance.Example`.

Example raw API calls through `Binance.Example`:

```elixir
Binance.Example.spot_average_price("BTCUSDT")
```

## Request behavior

The generated raw API functions call:

- `Binance.RequestBuilder` to build the final request URL, headers, timestamp, `recvWindow`, and signature when those parameters exist in the generated query;
- `Binance.REST.HTTPClient` to execute the HTTP request with `Req`.

For signed Binance endpoints, parameters are sent in the query string and `signature` is appended to the final URL.

Debug logs use Elixir's `Logger`. In IEx, `.iex.exs` currently configures debug logging so generated request URLs and parameters are visible during manual testing.

## Tests

```bash
mix test
```

## Notes

This is intentionally a raw generated API layer. Higher-level trading facades and experimental exchange abstractions are kept out of this public core.