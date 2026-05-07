defmodule Binance.API.SimpleEarn.FlexibleLocked do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Simple Account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/account
  Requires signature: true
  """
  def simple_account_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/account",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Collateral Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/history/collateralRecord
  Requires signature: true
  """
  def get_collateral_record_v1(client, productId: productId, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/history/collateralRecord",
          query: [productId: productId, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Rate History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/history/rateHistory
  Requires signature: true
  """
  def get_rate_history_v1(client, productId, aprPeriod: aprPeriod, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/history/rateHistory",
          query: [productId: productId, aprPeriod: aprPeriod, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Redemption Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/history/redemptionRecord
  Requires signature: true
  """
  def get_flexible_redemption_record_v1(client, productId: productId, redeemId: redeemId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/history/redemptionRecord",
          query: [productId: productId, redeemId: redeemId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Rewards History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/history/rewardsRecord
  Requires signature: true
  """
  def get_flexible_rewards_history_v1(client, type, productId: productId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/history/rewardsRecord",
          query: [productId: productId, asset: asset, startTime: startTime, endTime: endTime, type: type, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Subscription Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/history/subscriptionRecord
  Requires signature: true
  """
  def get_flexible_subscription_record_v1(client, productId: productId, purchaseId: purchaseId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/history/subscriptionRecord",
          query: [productId: productId, purchaseId: purchaseId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Simple Earn Flexible Product List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/list
  Requires signature: true
  """
  def get_simple_earn_flexible_product_list_v1(client, asset: asset, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/list",
          query: [asset: asset, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Personal Left Quota
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/personalLeftQuota
  Requires signature: true
  """
  def get_flexible_personal_left_quota_v1(client, productId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/personalLeftQuota",
          query: [productId: productId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Product Position
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/position
  Requires signature: true
  """
  def get_flexible_product_position_v1(client, asset: asset, productId: productId, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/position",
          query: [asset: asset, productId: productId, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Redeem Flexible Product
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/simple-earn/flexible/redeem
  Requires signature: true
  """
  def redeem_flexible_product_v1(client, productId, redeemAll: redeemAll, amount: amount, destAccount: destAccount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/redeem",
          query: [productId: productId, redeemAll: redeemAll, amount: amount, destAccount: destAccount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Set Flexible Auto Subscribe
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/simple-earn/flexible/setAutoSubscribe
  Requires signature: true
  """
  def set_flexible_auto_subscribe_v1(client, productId, autoSubscribe, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/setAutoSubscribe",
          query: [productId: productId, autoSubscribe: autoSubscribe, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Subscribe Flexible Product
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/simple-earn/flexible/subscribe
  Requires signature: true
  """
  def subscribe_flexible_product_v1(client, productId, amount, autoSubscribe: autoSubscribe, sourceAccount: sourceAccount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/subscribe",
          query: [productId: productId, amount: amount, autoSubscribe: autoSubscribe, sourceAccount: sourceAccount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Subscription Preview
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/subscriptionPreview
  Requires signature: true
  """
  def get_flexible_subscription_preview_v1(client, productId, amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/subscriptionPreview",
          query: [productId: productId, amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Locked Redemption Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/locked/history/redemptionRecord
  Requires signature: true
  """
  def get_locked_redemption_record_v1(client, positionId: positionId, redeemId: redeemId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/history/redemptionRecord",
          query: [positionId: positionId, redeemId: redeemId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Locked Rewards History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/locked/history/rewardsRecord
  Requires signature: true
  """
  def get_locked_rewards_history_v1(client, positionId: positionId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/history/rewardsRecord",
          query: [positionId: positionId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Locked Subscription Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/locked/history/subscriptionRecord
  Requires signature: true
  """
  def get_locked_subscription_record_v1(client, purchaseId: purchaseId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/history/subscriptionRecord",
          query: [purchaseId: purchaseId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Simple Earn Locked Product List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/locked/list
  Requires signature: true
  """
  def get_simple_earn_locked_product_list_v1(client, asset: asset, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/list",
          query: [asset: asset, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Locked Personal Left Quota
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/locked/personalLeftQuota
  Requires signature: true
  """
  def get_locked_personal_left_quota_v1(client, projectId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/personalLeftQuota",
          query: [projectId: projectId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Locked Product Position
  Method: GET
  Path: /sapi/v1/simple-earn/locked/position
  Requires signature: true
  """
  def get_locked_product_position_v1(client, asset: asset, positionId: positionId, projectId: projectId, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/position",
          query: [asset: asset, positionId: positionId, projectId: projectId, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Redeem Locked Product
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/simple-earn/locked/redeem
  Requires signature: true
  """
  def redeem_locked_product_v1(client, positionId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/redeem",
          query: [positionId: positionId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Set Locked Auto Subscribe
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/simple-earn/locked/setAutoSubscribe
  Requires signature: true
  """
  def set_locked_auto_subscribe_v1(client, positionId, autoSubscribe, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/setAutoSubscribe",
          query: [positionId: positionId, autoSubscribe: autoSubscribe, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Set Locked Product Redeem Option
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/simple-earn/locked/setRedeemOption
  Requires signature: true
  """
  def set_locked_product_redeem_option_v1(client, positionId, redeemTo, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/setRedeemOption",
          query: [positionId: positionId, redeemTo: redeemTo, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Subscribe Locked Product
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/simple-earn/locked/subscribe
  Requires signature: true
  """
  def subscribe_locked_product_v1(client, projectId, amount, autoSubscribe: autoSubscribe, sourceAccount: sourceAccount, redeemTo: redeemTo, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/subscribe",
          query: [projectId: projectId, amount: amount, autoSubscribe: autoSubscribe, sourceAccount: sourceAccount, redeemTo: redeemTo, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Locked Subscription Preview
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/locked/subscriptionPreview
  Requires signature: true
  """
  def get_locked_subscription_preview_v1(client, projectId, amount, autoSubscribe: autoSubscribe, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/subscriptionPreview",
          query: [projectId: projectId, amount: amount, autoSubscribe: autoSubscribe, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end