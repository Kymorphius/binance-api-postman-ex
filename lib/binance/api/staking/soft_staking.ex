defmodule Binance.API.Staking.SoftStaking do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_soft_staking_rewards_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Soft Staking Rewards History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/soft-staking/history/rewardsRecord
  Requires signature: true
  Optional: asset, startTime, endTime, current, size, recvWindow
  """
  def get_soft_staking_rewards_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/soft-staking/history/rewardsRecord",
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

  @spec get_soft_staking_product_list_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Soft Staking Product List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/soft-staking/list
  Requires signature: true
  Optional: asset, current, size, recvWindow
  """
  def get_soft_staking_product_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/soft-staking/list",
          query: [
            asset: Keyword.get(opts, :asset),
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

  @spec set_soft_staking_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Set Soft Staking
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/soft-staking/set
  Requires signature: true
  Required: softStaking
  Optional: recvWindow
  """
  def set_soft_staking_v1(client, softStaking, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/soft-staking/set",
          query: [
            softStaking: softStaking,
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
