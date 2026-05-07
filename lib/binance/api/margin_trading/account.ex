defmodule Binance.API.MarginTrading.Account do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Get BNB Burn Status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/bnbBurn
  Requires signature: true
  """
  def get_bnb_burn_status_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/bnbBurn",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Cross Margin Account Details
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/account
  Requires signature: true
  """
  def query_cross_margin_account_details_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/account",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Cross Isolated Margin Capital Flow
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/capital-flow
  Requires signature: true
  """
  def query_cross_isolated_margin_capital_flow_v1(client, asset: asset, symbol: symbol, type: type, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/capital-flow",
          query: [asset: asset, symbol: symbol, type: type, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Cross Margin Fee Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/crossMarginData
  Requires signature: true
  """
  def query_cross_margin_fee_data_v1(client, vipLevel: vipLevel, coin: coin, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/crossMarginData",
          query: [vipLevel: vipLevel, coin: coin, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Disable Isolated Margin Account
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /sapi/v1/margin/isolated/account
  Requires signature: true
  """
  def disable_isolated_margin_account_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/margin/isolated/account",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Enable Isolated Margin Account
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/margin/isolated/account
  Requires signature: true
  """
  def enable_isolated_margin_account_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/isolated/account",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Isolated Margin Account Info
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/isolated/account
  Requires signature: true
  """
  def query_isolated_margin_account_info_v1(client, symbols: symbols, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/isolated/account",
          query: [symbols: symbols, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Enabled Isolated Margin Account Limit
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/isolated/accountLimit
  Requires signature: true
  """
  def query_enabled_isolated_margin_account_limit_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/isolated/accountLimit",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Isolated Margin Fee Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/isolatedMarginData
  Requires signature: true
  """
  def query_isolated_margin_fee_data_v1(client, vipLevel: vipLevel, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/isolatedMarginData",
          query: [vipLevel: vipLevel, symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Adjust cross margin max leverage
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/margin/max-leverage
  Requires signature: true
  """
  def adjust_cross_margin_max_leverage_v1(client, maxLeverage) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/max-leverage",
          query: [maxLeverage: maxLeverage, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Summary of Margin account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/tradeCoeff
  Requires signature: true
  """
  def get_summary_of_margin_account_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/tradeCoeff",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end