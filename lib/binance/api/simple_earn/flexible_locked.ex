defmodule Binance.API.SimpleEarn.FlexibleLocked do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec simple_account_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Simple Account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/account
  Requires signature: true
  Optional: recvWindow
  """
  def simple_account_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_collateral_record_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Collateral Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/history/collateralRecord
  Requires signature: true
  Optional: productId, startTime, endTime, current, size, recvWindow
  """
  def get_collateral_record_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/history/collateralRecord",
          query: [productId: Keyword.get(opts, :productId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_rate_history_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Rate History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/history/rateHistory
  Requires signature: true
  Required: productId
  Optional: aprPeriod, startTime, endTime, current, size, recvWindow
  """
  def get_rate_history_v1(client, productId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/history/rateHistory",
          query: [productId: productId, aprPeriod: Keyword.get(opts, :aprPeriod), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_flexible_redemption_record_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Redemption Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/history/redemptionRecord
  Requires signature: true
  Optional: productId, redeemId, asset, startTime, endTime, current, size, recvWindow
  """
  def get_flexible_redemption_record_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/history/redemptionRecord",
          query: [productId: Keyword.get(opts, :productId), redeemId: Keyword.get(opts, :redeemId), asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_flexible_rewards_history_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Rewards History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/history/rewardsRecord
  Requires signature: true
  Required: type
  Optional: productId, asset, startTime, endTime, current, size, recvWindow
  """
  def get_flexible_rewards_history_v1(client, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/history/rewardsRecord",
          query: [productId: Keyword.get(opts, :productId), asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), type: type, current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_flexible_subscription_record_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Subscription Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/history/subscriptionRecord
  Requires signature: true
  Optional: productId, purchaseId, asset, startTime, endTime, current, size, recvWindow
  """
  def get_flexible_subscription_record_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/history/subscriptionRecord",
          query: [productId: Keyword.get(opts, :productId), purchaseId: Keyword.get(opts, :purchaseId), asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_simple_earn_flexible_product_list_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Simple Earn Flexible Product List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/list
  Requires signature: true
  Optional: asset, current, size, recvWindow
  """
  def get_simple_earn_flexible_product_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/list",
          query: [asset: Keyword.get(opts, :asset), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_flexible_personal_left_quota_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Personal Left Quota
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/personalLeftQuota
  Requires signature: true
  Required: productId
  Optional: recvWindow
  """
  def get_flexible_personal_left_quota_v1(client, productId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/personalLeftQuota",
          query: [productId: productId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_flexible_product_position_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Product Position
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/position
  Requires signature: true
  Optional: asset, productId, current, size, recvWindow
  """
  def get_flexible_product_position_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/position",
          query: [asset: Keyword.get(opts, :asset), productId: Keyword.get(opts, :productId), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec redeem_flexible_product_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Redeem Flexible Product
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/simple-earn/flexible/redeem
  Requires signature: true
  Required: productId
  Optional: redeemAll, amount, destAccount, recvWindow
  """
  def redeem_flexible_product_v1(client, productId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/redeem",
          query: [productId: productId, redeemAll: Keyword.get(opts, :redeemAll), amount: Keyword.get(opts, :amount), destAccount: Keyword.get(opts, :destAccount), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec set_flexible_auto_subscribe_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Set Flexible Auto Subscribe
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/simple-earn/flexible/setAutoSubscribe
  Requires signature: true
  Required: productId, autoSubscribe
  Optional: recvWindow
  """
  def set_flexible_auto_subscribe_v1(client, productId, autoSubscribe, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/setAutoSubscribe",
          query: [productId: productId, autoSubscribe: autoSubscribe, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec subscribe_flexible_product_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Subscribe Flexible Product
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/simple-earn/flexible/subscribe
  Requires signature: true
  Required: productId, amount
  Optional: autoSubscribe, sourceAccount, recvWindow
  """
  def subscribe_flexible_product_v1(client, productId, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/subscribe",
          query: [productId: productId, amount: amount, autoSubscribe: Keyword.get(opts, :autoSubscribe), sourceAccount: Keyword.get(opts, :sourceAccount), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_flexible_subscription_preview_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Subscription Preview
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/flexible/subscriptionPreview
  Requires signature: true
  Required: productId, amount
  Optional: recvWindow
  """
  def get_flexible_subscription_preview_v1(client, productId, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/flexible/subscriptionPreview",
          query: [productId: productId, amount: amount, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_locked_redemption_record_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Locked Redemption Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/locked/history/redemptionRecord
  Requires signature: true
  Optional: positionId, redeemId, asset, startTime, endTime, current, size, recvWindow
  """
  def get_locked_redemption_record_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/history/redemptionRecord",
          query: [positionId: Keyword.get(opts, :positionId), redeemId: Keyword.get(opts, :redeemId), asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_locked_rewards_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Locked Rewards History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/locked/history/rewardsRecord
  Requires signature: true
  Optional: positionId, asset, startTime, endTime, current, size, recvWindow
  """
  def get_locked_rewards_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/history/rewardsRecord",
          query: [positionId: Keyword.get(opts, :positionId), asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_locked_subscription_record_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Locked Subscription Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/locked/history/subscriptionRecord
  Requires signature: true
  Optional: purchaseId, asset, startTime, endTime, current, size, recvWindow
  """
  def get_locked_subscription_record_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/history/subscriptionRecord",
          query: [purchaseId: Keyword.get(opts, :purchaseId), asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_simple_earn_locked_product_list_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Simple Earn Locked Product List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/locked/list
  Requires signature: true
  Optional: asset, current, size, recvWindow
  """
  def get_simple_earn_locked_product_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/list",
          query: [asset: Keyword.get(opts, :asset), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_locked_personal_left_quota_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Locked Personal Left Quota
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/locked/personalLeftQuota
  Requires signature: true
  Required: projectId
  Optional: recvWindow
  """
  def get_locked_personal_left_quota_v1(client, projectId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/personalLeftQuota",
          query: [projectId: projectId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_locked_product_position_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Locked Product Position
  Method: GET
  Path: /sapi/v1/simple-earn/locked/position
  Requires signature: true
  Optional: asset, positionId, projectId, current, size, recvWindow
  """
  def get_locked_product_position_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/position",
          query: [asset: Keyword.get(opts, :asset), positionId: Keyword.get(opts, :positionId), projectId: Keyword.get(opts, :projectId), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec redeem_locked_product_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Redeem Locked Product
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/simple-earn/locked/redeem
  Requires signature: true
  Required: positionId
  Optional: recvWindow
  """
  def redeem_locked_product_v1(client, positionId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/redeem",
          query: [positionId: positionId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec set_locked_auto_subscribe_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Set Locked Auto Subscribe
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/simple-earn/locked/setAutoSubscribe
  Requires signature: true
  Required: positionId, autoSubscribe
  Optional: recvWindow
  """
  def set_locked_auto_subscribe_v1(client, positionId, autoSubscribe, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/setAutoSubscribe",
          query: [positionId: positionId, autoSubscribe: autoSubscribe, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec set_locked_product_redeem_option_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Set Locked Product Redeem Option
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/simple-earn/locked/setRedeemOption
  Requires signature: true
  Required: positionId, redeemTo
  Optional: recvWindow
  """
  def set_locked_product_redeem_option_v1(client, positionId, redeemTo, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/setRedeemOption",
          query: [positionId: positionId, redeemTo: redeemTo, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec subscribe_locked_product_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Subscribe Locked Product
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/simple-earn/locked/subscribe
  Requires signature: true
  Required: projectId, amount
  Optional: autoSubscribe, sourceAccount, redeemTo, recvWindow
  """
  def subscribe_locked_product_v1(client, projectId, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/subscribe",
          query: [projectId: projectId, amount: amount, autoSubscribe: Keyword.get(opts, :autoSubscribe), sourceAccount: Keyword.get(opts, :sourceAccount), redeemTo: Keyword.get(opts, :redeemTo), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_locked_subscription_preview_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Locked Subscription Preview
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/simple-earn/locked/subscriptionPreview
  Requires signature: true
  Required: projectId, amount
  Optional: autoSubscribe, recvWindow
  """
  def get_locked_subscription_preview_v1(client, projectId, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/simple-earn/locked/subscriptionPreview",
          query: [projectId: projectId, amount: amount, autoSubscribe: Keyword.get(opts, :autoSubscribe), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end