defmodule Binance.API.VipLoan.UserInformation do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Get VIP Loan Accrued Interest
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/accruedInterest
  Requires signature: true
  """
  def get_vip_loan_accrued_interest_v1(client, orderId: orderId, loanCoin: loanCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/accruedInterest",
          query: [orderId: orderId, loanCoin: loanCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Check VIP Loan Collateral Account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/collateral/account
  Requires signature: true
  """
  def check_vip_loan_collateral_account_v1(client, orderId: orderId, collateralAccountId: collateralAccountId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/collateral/account",
          query: [orderId: orderId, collateralAccountId: collateralAccountId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get VIP Loan Ongoing Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/ongoing/orders
  Requires signature: true
  """
  def get_vip_loan_ongoing_orders_v1(client, orderId: orderId, collateralAccountId: collateralAccountId, loanCoin: loanCoin, collateralCoin: collateralCoin, current: current, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/ongoing/orders",
          query: [orderId: orderId, collateralAccountId: collateralAccountId, loanCoin: loanCoin, collateralCoin: collateralCoin, current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Application Status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/request/data
  Requires signature: true
  """
  def query_application_status_v1(client, current: current, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/request/data",
          query: [current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end