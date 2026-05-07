defmodule Binance.API.DerivativesTrading.Options.MarketMakerEndpoints do
  @moduledoc false

  @base_urls %{prod_url: "https://eapi.binance.com", testnet_url: "https://testnet.binancefuture.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Get Auto-Cancel All Open Orders Config
  Variant: Trade
  Tags: kill_switch, trade
  Method: GET
  Path: /eapi/v1/countdownCancelAll
  Requires signature: true
  """
  def get_auto_cancel_all_open_orders_config_v1(client, underlying: underlying, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/countdownCancelAll",
          query: [underlying: underlying, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Set Auto-Cancel All Open Orders Config
  Variant: Trade
  Tags: kill_switch, trade
  Method: POST
  Path: /eapi/v1/countdownCancelAll
  Requires signature: true
  """
  def set_auto_cancel_all_open_orders_config_v1(client, underlying, countdownTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/countdownCancelAll",
          query: [underlying: underlying, countdownTime: countdownTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Auto-Cancel All Open Orders Heartbeat
  Variant: Trade
  Tags: kill_switch, trade
  Method: POST
  Path: /eapi/v1/countdownCancelAllHeartBeat
  Requires signature: true
  """
  def auto_cancel_all_open_orders_heartbeat_v1(client, underlyings, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/countdownCancelAllHeartBeat",
          query: [underlyings: underlyings, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Market Maker Protection Config
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /eapi/v1/mmp
  Requires signature: true
  """
  def get_market_maker_protection_config_v1(client, underlying: underlying, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/mmp",
          query: [underlying: underlying, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Reset Market Maker Protection Config
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /eapi/v1/mmpReset
  Requires signature: true
  """
  def reset_market_maker_protection_config_v1(client, underlying: underlying, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/mmpReset",
          query: [underlying: underlying, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Set Market Maker Protection Config
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /eapi/v1/mmpSet
  Requires signature: true
  """
  def set_market_maker_protection_config_v1(client, underlying: underlying, windowTimeInMilliseconds: windowTimeInMilliseconds, frozenTimeInMilliseconds: frozenTimeInMilliseconds, qtyLimit: qtyLimit, deltaLimit: deltaLimit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/mmpSet",
          query: [underlying: underlying, windowTimeInMilliseconds: windowTimeInMilliseconds, frozenTimeInMilliseconds: frozenTimeInMilliseconds, qtyLimit: qtyLimit, deltaLimit: deltaLimit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end