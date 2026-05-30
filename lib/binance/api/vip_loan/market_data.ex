defmodule Binance.API.VipLoan.MarketData do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_collateral_asset_data_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Collateral Asset Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/collateral/data
  Requires signature: true
  Optional: collateralCoin, recvWindow
  """
  def get_collateral_asset_data_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/collateral/data",
          query: [
            collateralCoin: Keyword.get(opts, :collateralCoin),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_vip_loan_interest_rate_history_v1(Binance.Client.t(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get VIP Loan Interest Rate History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/interestRateHistory
  Requires signature: true
  Required: coin, recvWindow
  Optional: startTime, endTime, current, limit
  """
  def get_vip_loan_interest_rate_history_v1(client, coin, recvWindow, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/interestRateHistory",
          query: [
            coin: coin,
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            limit: Keyword.get(opts, :limit),
            recvWindow: recvWindow,
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_loanable_assets_data_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Loanable Assets Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/loanable/data
  Requires signature: true
  Optional: loanCoin, vipLevel, recvWindow
  """
  def get_loanable_assets_data_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/loanable/data",
          query: [
            loanCoin: Keyword.get(opts, :loanCoin),
            vipLevel: Keyword.get(opts, :vipLevel),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_borrow_interest_rate_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Borrow Interest Rate
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/request/interestRate
  Requires signature: true
  Required: loanCoin
  Optional: recvWindow
  """
  def get_borrow_interest_rate_v1(client, loanCoin, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/request/interestRate",
          query: [loanCoin: loanCoin, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end
end
