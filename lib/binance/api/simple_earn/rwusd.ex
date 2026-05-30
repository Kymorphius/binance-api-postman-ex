defmodule Binance.API.SimpleEarn.Rwusd do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_rwusd_account_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get RWUSD Account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/rwusd/account
  Requires signature: true
  Optional: recvWindow
  """
  def get_rwusd_account_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/rwusd/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_rwusd_rate_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get RWUSD Rate History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/rwusd/history/rateHistory
  Requires signature: true
  Optional: startTime, endTime, current, size, recvWindow
  """
  def get_rwusd_rate_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/rwusd/history/rateHistory",
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

  @spec get_rwusd_redemption_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get RWUSD Redemption History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/rwusd/history/redemptionHistory
  Requires signature: true
  Optional: startTime, endTime, current, size, recvWindow
  """
  def get_rwusd_redemption_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/rwusd/history/redemptionHistory",
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

  @spec get_rwusd_rewards_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get RWUSD Rewards History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/rwusd/history/rewardsHistory
  Requires signature: true
  Optional: startTime, endTime, current, size, recvWindow
  """
  def get_rwusd_rewards_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/rwusd/history/rewardsHistory",
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

  @spec get_rwusd_subscription_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get RWUSD subscription history
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/rwusd/history/subscriptionHistory
  Requires signature: true
  Optional: asset, startTime, endTime, current, size, recvWindow
  """
  def get_rwusd_subscription_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/rwusd/history/subscriptionHistory",
          query: [
            asset: Keyword.get(opts, :asset),
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

  @spec get_rwusd_quota_details_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get RWUSD Quota Details
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/rwusd/quota
  Requires signature: true
  Optional: recvWindow
  """
  def get_rwusd_quota_details_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/rwusd/quota",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec redeem_rwusd_v1(Binance.Client.t(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Redeem RWUSD
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/rwusd/redeem
  Requires signature: true
  Required: amount, type
  Optional: recvWindow
  """
  def redeem_rwusd_v1(client, amount, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/rwusd/redeem",
          query: [
            amount: amount,
            type: type,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec subscribe_rwusd_v1(Binance.Client.t(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Subscribe RWUSD
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/rwusd/subscribe
  Requires signature: true
  Required: asset, amount
  Optional: recvWindow
  """
  def subscribe_rwusd_v1(client, asset, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/rwusd/subscribe",
          query: [
            asset: asset,
            amount: amount,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end
end
