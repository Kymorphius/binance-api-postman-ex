defmodule Binance.API.MarginTrading.MarketData do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Get All Margin Assets
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/margin/allAssets
  Requires signature: false
  """
  def get_all_margin_assets_v1(client, asset: asset) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/allAssets",
          query: [asset: asset],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get All Cross Margin Pairs
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/margin/allPairs
  Requires signature: false
  """
  def get_all_cross_margin_pairs_v1(client, symbol: symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/allPairs",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin Available Inventory
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/available-inventory
  Requires signature: true
  """
  def query_margin_available_inventory_v1(client, type) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/available-inventory",
          query: [type: type, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cross margin collateral ratio
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/margin/crossMarginCollateralRatio
  Requires signature: false
  """
  def cross_margin_collateral_ratio_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/crossMarginCollateralRatio",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Delist Schedule
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/margin/delist-schedule
  Requires signature: false
  """
  def get_delist_schedule_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/delist-schedule",
          query: [recvWindow: recvWindow],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get All Isolated Margin Symbol
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/margin/isolated/allPairs
  Requires signature: false
  """
  def get_all_isolated_margin_symbol_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/isolated/allPairs",
          query: [symbol: symbol, recvWindow: recvWindow],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Isolated Margin Tier Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/isolatedMarginTier
  Requires signature: true
  """
  def query_isolated_margin_tier_data_v1(client, symbol, tier: tier, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/isolatedMarginTier",
          query: [symbol: symbol, tier: tier, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Liability Coin Leverage Bracket in Cross Margin Pro Mode
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/margin/leverageBracket
  Requires signature: false
  """
  def query_liability_coin_leverage_bracket_in_cross_margin_pro_mode_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/leverageBracket",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Limit Price Pairs
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/margin/limit-price-pairs
  Requires signature: false
  """
  def get_limit_price_pairs_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/limit-price-pairs",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get list Schedule
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/margin/list-schedule
  Requires signature: false
  """
  def get_list_schedule_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/list-schedule",
          query: [recvWindow: recvWindow],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin PriceIndex
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/margin/priceIndex
  Requires signature: false
  """
  def query_margin_priceindex_v1(client, symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/priceIndex",
          query: [symbol: symbol],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Margin Restricted Assets
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/margin/restricted-asset
  Requires signature: false
  """
  def get_margin_restricted_assets_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/restricted-asset",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Margin Asset Risk-Based Liquidation Ratio
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/margin/risk-based-liquidation-ratio
  Requires signature: false
  """
  def get_margin_asset_risk_based_liquidation_ratio_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/risk-based-liquidation-ratio",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end