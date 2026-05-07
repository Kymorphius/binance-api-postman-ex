defmodule Binance.API.CryptoLoan.StableRate do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Get Loan Borrow History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/borrow/history
  Requires signature: true
  """
  def get_loan_borrow_history_v1(client, orderId: orderId, loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/borrow/history",
          query: [orderId: orderId, loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Crypto Loans Income History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/income
  Requires signature: true
  """
  def get_crypto_loans_income_history_v1(client, asset: asset, type: type, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/income",
          query: [asset: asset, type: type, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Loan LTV Adjustment History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/ltv/adjustment/history
  Requires signature: true
  """
  def get_loan_ltv_adjustment_history_v1(client, orderId: orderId, loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/ltv/adjustment/history",
          query: [orderId: orderId, loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Check Collateral Repay Rate
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/repay/collateral/rate
  Requires signature: true
  """
  def check_collateral_repay_rate_v1(client, loanCoin, collateralCoin, repayAmount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/repay/collateral/rate",
          query: [loanCoin: loanCoin, collateralCoin: collateralCoin, repayAmount: repayAmount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Loan Repayment History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/repay/history
  Requires signature: true
  """
  def get_loan_repayment_history_v1(client, orderId: orderId, loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/repay/history",
          query: [orderId: orderId, loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end