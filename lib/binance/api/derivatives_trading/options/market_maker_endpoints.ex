defmodule Binance.API.DerivativesTrading.Options.MarketMakerEndpoints do
  @moduledoc false

  @base_urls %{prod_url: "https://eapi.binance.com", testnet_url: "https://testnet.binancefuture.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_auto_cancel_all_open_orders_config_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Auto-Cancel All Open Orders Config
  Variant: Trade
  Tags: kill_switch, trade
  Method: GET
  Path: /eapi/v1/countdownCancelAll
  Requires signature: true
  Optional: underlying, recvWindow
  """
  def get_auto_cancel_all_open_orders_config_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/countdownCancelAll",
          query: [underlying: Keyword.get(opts, :underlying), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec set_auto_cancel_all_open_orders_config_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Set Auto-Cancel All Open Orders Config
  Variant: Trade
  Tags: kill_switch, trade
  Method: POST
  Path: /eapi/v1/countdownCancelAll
  Requires signature: true
  Required: underlying, countdownTime
  Optional: recvWindow
  """
  def set_auto_cancel_all_open_orders_config_v1(client, underlying, countdownTime, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/countdownCancelAll",
          query: [underlying: underlying, countdownTime: countdownTime, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec auto_cancel_all_open_orders_heartbeat_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Auto-Cancel All Open Orders Heartbeat
  Variant: Trade
  Tags: kill_switch, trade
  Method: POST
  Path: /eapi/v1/countdownCancelAllHeartBeat
  Requires signature: true
  Required: underlyings
  Optional: recvWindow
  """
  def auto_cancel_all_open_orders_heartbeat_v1(client, underlyings, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/countdownCancelAllHeartBeat",
          query: [underlyings: underlyings, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_market_maker_protection_config_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Market Maker Protection Config
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /eapi/v1/mmp
  Requires signature: true
  Optional: underlying, recvWindow
  """
  def get_market_maker_protection_config_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/mmp",
          query: [underlying: Keyword.get(opts, :underlying), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec reset_market_maker_protection_config_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Reset Market Maker Protection Config
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /eapi/v1/mmpReset
  Requires signature: true
  Optional: underlying, recvWindow
  """
  def reset_market_maker_protection_config_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/mmpReset",
          query: [underlying: Keyword.get(opts, :underlying), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec set_market_maker_protection_config_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Set Market Maker Protection Config
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /eapi/v1/mmpSet
  Requires signature: true
  Optional: underlying, windowTimeInMilliseconds, frozenTimeInMilliseconds, qtyLimit, deltaLimit, recvWindow
  """
  def set_market_maker_protection_config_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/mmpSet",
          query: [underlying: Keyword.get(opts, :underlying), windowTimeInMilliseconds: Keyword.get(opts, :windowTimeInMilliseconds), frozenTimeInMilliseconds: Keyword.get(opts, :frozenTimeInMilliseconds), qtyLimit: Keyword.get(opts, :qtyLimit), deltaLimit: Keyword.get(opts, :deltaLimit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end