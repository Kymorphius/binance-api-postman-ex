defmodule Binance.API.VipLoan.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  VIP Loan Borrow
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/loan/vip/borrow
  Requires signature: true
  """
  def vip_loan_borrow_v1(client, loanAccountId, loanCoin, loanAmount, collateralAccountId, collateralCoin, isFlexibleRate, loanTerm: loanTerm, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/borrow",
          query: [loanAccountId: loanAccountId, loanCoin: loanCoin, loanAmount: loanAmount, collateralAccountId: collateralAccountId, collateralCoin: collateralCoin, isFlexibleRate: isFlexibleRate, loanTerm: loanTerm, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  VIP Loan Renew
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/loan/vip/renew
  Requires signature: true
  """
  def vip_loan_renew_v1(client, orderId, loanTerm, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/renew",
          query: [orderId: orderId, loanTerm: loanTerm, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  VIP Loan Repay
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/loan/vip/repay
  Requires signature: true
  """
  def vip_loan_repay_v1(client, orderId, amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/repay",
          query: [orderId: orderId, amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end