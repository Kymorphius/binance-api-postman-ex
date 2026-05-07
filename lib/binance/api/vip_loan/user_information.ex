defmodule Binance.API.VipLoan.UserInformation do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_vip_loan_accrued_interest_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get VIP Loan Accrued Interest
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/accruedInterest
  Requires signature: true
  Optional: orderId, loanCoin, startTime, endTime, current, limit, recvWindow
  """
  def get_vip_loan_accrued_interest_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/accruedInterest",
          query: [orderId: Keyword.get(opts, :orderId), loanCoin: Keyword.get(opts, :loanCoin), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec check_vip_loan_collateral_account_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Check VIP Loan Collateral Account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/collateral/account
  Requires signature: true
  Optional: orderId, collateralAccountId, recvWindow
  """
  def check_vip_loan_collateral_account_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/collateral/account",
          query: [orderId: Keyword.get(opts, :orderId), collateralAccountId: Keyword.get(opts, :collateralAccountId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_vip_loan_ongoing_orders_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get VIP Loan Ongoing Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/ongoing/orders
  Requires signature: true
  Optional: orderId, collateralAccountId, loanCoin, collateralCoin, current, limit, recvWindow
  """
  def get_vip_loan_ongoing_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/ongoing/orders",
          query: [orderId: Keyword.get(opts, :orderId), collateralAccountId: Keyword.get(opts, :collateralAccountId), loanCoin: Keyword.get(opts, :loanCoin), collateralCoin: Keyword.get(opts, :collateralCoin), current: Keyword.get(opts, :current), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_application_status_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Application Status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/request/data
  Requires signature: true
  Optional: current, limit, recvWindow
  """
  def query_application_status_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/request/data",
          query: [current: Keyword.get(opts, :current), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end