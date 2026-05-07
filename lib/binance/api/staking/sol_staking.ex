defmodule Binance.API.Staking.SolStaking do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  SOL Staking account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/sol-staking/account
  Requires signature: true
  """
  def sol_staking_account_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sol-staking/account",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Claim Boost Rewards
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/sol-staking/sol/claim
  Requires signature: true
  """
  def claim_boost_rewards_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sol-staking/sol/claim",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get BNSOL rewards history
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/sol-staking/sol/history/bnsolRewardsHistory
  Requires signature: true
  """
  def get_bnsol_rewards_history_v1(client, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sol-staking/sol/history/bnsolRewardsHistory",
          query: [startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Boost Rewards History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/sol-staking/sol/history/boostRewardsHistory
  Requires signature: true
  """
  def get_boost_rewards_history_v1(client, type, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sol-staking/sol/history/boostRewardsHistory",
          query: [type: type, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get BNSOL Rate History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/sol-staking/sol/history/rateHistory
  Requires signature: true
  """
  def get_bnsol_rate_history_v1(client, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sol-staking/sol/history/rateHistory",
          query: [startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get SOL redemption history
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/sol-staking/sol/history/redemptionHistory
  Requires signature: true
  """
  def get_sol_redemption_history_v1(client, redeemId: redeemId, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sol-staking/sol/history/redemptionHistory",
          query: [redeemId: redeemId, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get SOL staking history
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/sol-staking/sol/history/stakingHistory
  Requires signature: true
  """
  def get_sol_staking_history_v1(client, purchaseId: purchaseId, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sol-staking/sol/history/stakingHistory",
          query: [purchaseId: purchaseId, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Unclaimed Rewards
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/sol-staking/sol/history/unclaimedRewards
  Requires signature: true
  """
  def get_unclaimed_rewards_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sol-staking/sol/history/unclaimedRewards",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get SOL staking quota details
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/sol-staking/sol/quota
  Requires signature: true
  """
  def get_sol_staking_quota_details_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sol-staking/sol/quota",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Redeem SOL
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/sol-staking/sol/redeem
  Requires signature: true
  """
  def redeem_sol_v1(client, amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sol-staking/sol/redeem",
          query: [amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Subscribe SOL Staking
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/sol-staking/sol/stake
  Requires signature: true
  """
  def subscribe_sol_staking_v1(client, amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sol-staking/sol/stake",
          query: [amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end