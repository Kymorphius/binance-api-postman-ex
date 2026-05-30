defmodule Binance.API.Staking.EthStaking do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_wbeth_rate_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get WBETH Rate History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/eth-staking/eth/history/rateHistory
  Requires signature: true
  Optional: startTime, endTime, current, size, recvWindow
  """
  def get_wbeth_rate_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/eth-staking/eth/history/rateHistory",
          query: [
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            size: Keyword.get(opts, :size),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_eth_redemption_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get ETH redemption history
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/eth-staking/eth/history/redemptionHistory
  Requires signature: true
  Optional: redeemId, startTime, endTime, current, size, recvWindow
  """
  def get_eth_redemption_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/eth-staking/eth/history/redemptionHistory",
          query: [
            redeemId: Keyword.get(opts, :redeemId),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            size: Keyword.get(opts, :size),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_eth_staking_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get ETH staking history
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/eth-staking/eth/history/stakingHistory
  Requires signature: true
  Optional: purchaseId, startTime, endTime, current, size, recvWindow
  """
  def get_eth_staking_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/eth-staking/eth/history/stakingHistory",
          query: [
            purchaseId: Keyword.get(opts, :purchaseId),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            size: Keyword.get(opts, :size),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_wbeth_rewards_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get WBETH rewards history
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/eth-staking/eth/history/wbethRewardsHistory
  Requires signature: true
  Optional: startTime, endTime, current, size, recvWindow
  """
  def get_wbeth_rewards_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/eth-staking/eth/history/wbethRewardsHistory",
          query: [
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            size: Keyword.get(opts, :size),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_current_eth_staking_quota_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get current ETH staking quota
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/eth-staking/eth/quota
  Requires signature: true
  Optional: recvWindow
  """
  def get_current_eth_staking_quota_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/eth-staking/eth/quota",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec redeem_eth_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Redeem ETH
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/eth-staking/eth/redeem
  Requires signature: true
  Required: amount
  Optional: asset, recvWindow
  """
  def redeem_eth_v1(client, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/eth-staking/eth/redeem",
          query: [
            amount: amount,
            asset: Keyword.get(opts, :asset),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_wbeth_unwrap_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get WBETH unwrap history
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/eth-staking/wbeth/history/unwrapHistory
  Requires signature: true
  Optional: startTime, endTime, current, size, recvWindow
  """
  def get_wbeth_unwrap_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/eth-staking/wbeth/history/unwrapHistory",
          query: [
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            size: Keyword.get(opts, :size),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_wbeth_wrap_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get WBETH wrap history
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/eth-staking/wbeth/history/wrapHistory
  Requires signature: true
  Optional: startTime, endTime, current, size, recvWindow
  """
  def get_wbeth_wrap_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/eth-staking/wbeth/history/wrapHistory",
          query: [
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            size: Keyword.get(opts, :size),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec wrap_beth_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Wrap BETH
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/eth-staking/wbeth/wrap
  Requires signature: true
  Required: amount
  Optional: recvWindow
  """
  def wrap_beth_v1(client, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/eth-staking/wbeth/wrap",
          query: [amount: amount, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec eth_staking_account_v2(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  ETH Staking account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/eth-staking/account
  Requires signature: true
  Optional: recvWindow
  """
  def eth_staking_account_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/eth-staking/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec subscribe_eth_staking_v2(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Subscribe ETH Staking
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v2/eth-staking/eth/stake
  Requires signature: true
  Required: amount
  Optional: recvWindow
  """
  def subscribe_eth_staking_v2(client, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v2/eth-staking/eth/stake",
          query: [amount: amount, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end
end
