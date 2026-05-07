defmodule Binance.API.Staking.OnChainYields do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  On-chain Yields Account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/account
  Requires signature: true
  """
  def on_chain_yields_account_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/account",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get On-chain Yields Locked Redemption Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/history/redemptionRecord
  Requires signature: true
  """
  def get_on_chain_yields_locked_redemption_record_v1(client, positionId: positionId, redeemId: redeemId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/history/redemptionRecord",
          query: [positionId: positionId, redeemId: redeemId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get On-chain Yields Locked Rewards History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/history/rewardsRecord
  Requires signature: true
  """
  def get_on_chain_yields_locked_rewards_history_v1(client, positionId: positionId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/history/rewardsRecord",
          query: [positionId: positionId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get On-chain Yields Locked Subscription Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/history/subscriptionRecord
  Requires signature: true
  """
  def get_on_chain_yields_locked_subscription_record_v1(client, purchaseId: purchaseId, clientId: clientId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/history/subscriptionRecord",
          query: [purchaseId: purchaseId, clientId: clientId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get On-chain Yields Locked Product List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/list
  Requires signature: true
  """
  def get_on_chain_yields_locked_product_list_v1(client, asset: asset, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/list",
          query: [asset: asset, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get On-chain Yields Locked Personal Left Quota
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/personalLeftQuota
  Requires signature: true
  """
  def get_on_chain_yields_locked_personal_left_quota_v1(client, projectId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/personalLeftQuota",
          query: [projectId: projectId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get On-chain Yields Locked Product Position
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/position
  Requires signature: true
  """
  def get_on_chain_yields_locked_product_position_v1(client, asset: asset, positionId: positionId, projectId: projectId, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/position",
          query: [asset: asset, positionId: positionId, projectId: projectId, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Redeem On-chain Yields Locked Product
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/onchain-yields/locked/redeem
  Requires signature: true
  """
  def redeem_on_chain_yields_locked_product_v1(client, positionId, channelId: channelId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/redeem",
          query: [positionId: positionId, channelId: channelId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Set On-chain Yields Locked Auto Subscribe
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/onchain-yields/locked/setAutoSubscribe
  Requires signature: true
  """
  def set_on_chain_yields_locked_auto_subscribe_v1(client, positionId, autoSubscribe, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/setAutoSubscribe",
          query: [positionId: positionId, autoSubscribe: autoSubscribe, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Set On-chain Yields Locked Product Redeem Option
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/onchain-yields/locked/setRedeemOption
  Requires signature: true
  """
  def set_on_chain_yields_locked_product_redeem_option_v1(client, positionId, redeemTo, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/setRedeemOption",
          query: [positionId: positionId, redeemTo: redeemTo, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Subscribe On-chain Yields Locked Product
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/onchain-yields/locked/subscribe
  Requires signature: true
  """
  def subscribe_on_chain_yields_locked_product_v1(client, projectId, amount, autoSubscribe: autoSubscribe, sourceAccount: sourceAccount, redeemTo: redeemTo, channelId: channelId, clientId: clientId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/subscribe",
          query: [projectId: projectId, amount: amount, autoSubscribe: autoSubscribe, sourceAccount: sourceAccount, redeemTo: redeemTo, channelId: channelId, clientId: clientId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get On-chain Yields Locked Subscription Preview
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/subscriptionPreview
  Requires signature: true
  """
  def get_on_chain_yields_locked_subscription_preview_v1(client, projectId, amount, autoSubscribe: autoSubscribe, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/subscriptionPreview",
          query: [projectId: projectId, amount: amount, autoSubscribe: autoSubscribe, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end