defmodule Binance.API.Staking.OnChainYields do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec on_chain_yields_account_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  On-chain Yields Account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/account
  Requires signature: true
  Optional: recvWindow
  """
  def on_chain_yields_account_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_on_chain_yields_locked_redemption_record_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get On-chain Yields Locked Redemption Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/history/redemptionRecord
  Requires signature: true
  Optional: positionId, redeemId, asset, startTime, endTime, current, size, recvWindow
  """
  def get_on_chain_yields_locked_redemption_record_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/history/redemptionRecord",
          query: [positionId: Keyword.get(opts, :positionId), redeemId: Keyword.get(opts, :redeemId), asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_on_chain_yields_locked_rewards_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get On-chain Yields Locked Rewards History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/history/rewardsRecord
  Requires signature: true
  Optional: positionId, asset, startTime, endTime, current, size, recvWindow
  """
  def get_on_chain_yields_locked_rewards_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/history/rewardsRecord",
          query: [positionId: Keyword.get(opts, :positionId), asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_on_chain_yields_locked_subscription_record_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get On-chain Yields Locked Subscription Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/history/subscriptionRecord
  Requires signature: true
  Optional: purchaseId, clientId, asset, startTime, endTime, current, size, recvWindow
  """
  def get_on_chain_yields_locked_subscription_record_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/history/subscriptionRecord",
          query: [purchaseId: Keyword.get(opts, :purchaseId), clientId: Keyword.get(opts, :clientId), asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_on_chain_yields_locked_product_list_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get On-chain Yields Locked Product List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/list
  Requires signature: true
  Optional: asset, current, size, recvWindow
  """
  def get_on_chain_yields_locked_product_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/list",
          query: [asset: Keyword.get(opts, :asset), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_on_chain_yields_locked_personal_left_quota_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get On-chain Yields Locked Personal Left Quota
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/personalLeftQuota
  Requires signature: true
  Required: projectId
  Optional: recvWindow
  """
  def get_on_chain_yields_locked_personal_left_quota_v1(client, projectId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/personalLeftQuota",
          query: [projectId: projectId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_on_chain_yields_locked_product_position_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get On-chain Yields Locked Product Position
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/position
  Requires signature: true
  Optional: asset, positionId, projectId, current, size, recvWindow
  """
  def get_on_chain_yields_locked_product_position_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/position",
          query: [asset: Keyword.get(opts, :asset), positionId: Keyword.get(opts, :positionId), projectId: Keyword.get(opts, :projectId), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec redeem_on_chain_yields_locked_product_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Redeem On-chain Yields Locked Product
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/onchain-yields/locked/redeem
  Requires signature: true
  Required: positionId
  Optional: channelId, recvWindow
  """
  def redeem_on_chain_yields_locked_product_v1(client, positionId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/redeem",
          query: [positionId: positionId, channelId: Keyword.get(opts, :channelId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec set_on_chain_yields_locked_auto_subscribe_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Set On-chain Yields Locked Auto Subscribe
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/onchain-yields/locked/setAutoSubscribe
  Requires signature: true
  Required: positionId, autoSubscribe
  Optional: recvWindow
  """
  def set_on_chain_yields_locked_auto_subscribe_v1(client, positionId, autoSubscribe, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/setAutoSubscribe",
          query: [positionId: positionId, autoSubscribe: autoSubscribe, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec set_on_chain_yields_locked_product_redeem_option_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Set On-chain Yields Locked Product Redeem Option
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/onchain-yields/locked/setRedeemOption
  Requires signature: true
  Required: positionId, redeemTo
  Optional: recvWindow
  """
  def set_on_chain_yields_locked_product_redeem_option_v1(client, positionId, redeemTo, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/setRedeemOption",
          query: [positionId: positionId, redeemTo: redeemTo, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec subscribe_on_chain_yields_locked_product_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Subscribe On-chain Yields Locked Product
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/onchain-yields/locked/subscribe
  Requires signature: true
  Required: projectId, amount
  Optional: autoSubscribe, sourceAccount, redeemTo, channelId, clientId, recvWindow
  """
  def subscribe_on_chain_yields_locked_product_v1(client, projectId, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/subscribe",
          query: [projectId: projectId, amount: amount, autoSubscribe: Keyword.get(opts, :autoSubscribe), sourceAccount: Keyword.get(opts, :sourceAccount), redeemTo: Keyword.get(opts, :redeemTo), channelId: Keyword.get(opts, :channelId), clientId: Keyword.get(opts, :clientId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_on_chain_yields_locked_subscription_preview_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get On-chain Yields Locked Subscription Preview
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/onchain-yields/locked/subscriptionPreview
  Requires signature: true
  Required: projectId, amount
  Optional: autoSubscribe, recvWindow
  """
  def get_on_chain_yields_locked_subscription_preview_v1(client, projectId, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/onchain-yields/locked/subscriptionPreview",
          query: [projectId: projectId, amount: amount, autoSubscribe: Keyword.get(opts, :autoSubscribe), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end