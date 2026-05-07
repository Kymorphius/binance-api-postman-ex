defmodule Binance.API.CryptoLoan.FlexibleRate do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Flexible Loan Adjust LTV
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v2/loan/flexible/adjust/ltv
  Requires signature: true
  """
  def flexible_loan_adjust_ltv_v2(client, loanCoin, collateralCoin, adjustmentAmount, direction, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/adjust/ltv",
          query: [loanCoin: loanCoin, collateralCoin: collateralCoin, adjustmentAmount: adjustmentAmount, direction: direction, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Flexible Loan Borrow
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v2/loan/flexible/borrow
  Requires signature: true
  """
  def flexible_loan_borrow_v2(client, loanCoin, collateralCoin, loanAmount: loanAmount, collateralAmount: collateralAmount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/borrow",
          query: [loanCoin: loanCoin, loanAmount: loanAmount, collateralCoin: collateralCoin, collateralAmount: collateralAmount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Loan Borrow History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/borrow/history
  Requires signature: true
  """
  def get_flexible_loan_borrow_history_v2(client, loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/borrow/history",
          query: [loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Loan Collateral Assets Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/collateral/data
  Requires signature: true
  """
  def get_flexible_loan_collateral_assets_data_v2(client, collateralCoin: collateralCoin, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/collateral/data",
          query: [collateralCoin: collateralCoin, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Loan Liquidation History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/liquidation/history
  Requires signature: true
  """
  def get_flexible_loan_liquidation_history_v2(client, loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/liquidation/history",
          query: [loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Loan Assets Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/loanable/data
  Requires signature: true
  """
  def get_flexible_loan_assets_data_v2(client, loanCoin: loanCoin, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/loanable/data",
          query: [loanCoin: loanCoin, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Loan LTV Adjustment History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/ltv/adjustment/history
  Requires signature: true
  """
  def get_flexible_loan_ltv_adjustment_history_v2(client, loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/ltv/adjustment/history",
          query: [loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Loan Ongoing Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/ongoing/orders
  Requires signature: true
  """
  def get_flexible_loan_ongoing_orders_v2(client, loanCoin: loanCoin, collateralCoin: collateralCoin, current: current, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/ongoing/orders",
          query: [loanCoin: loanCoin, collateralCoin: collateralCoin, current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Flexible Loan Repay
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v2/loan/flexible/repay
  Requires signature: true
  """
  def flexible_loan_repay_v2(client, loanCoin, collateralCoin, repayAmount, collateralReturn: collateralReturn, fullRepayment: fullRepayment, repaymentType: repaymentType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/repay",
          query: [loanCoin: loanCoin, collateralCoin: collateralCoin, repayAmount: repayAmount, collateralReturn: collateralReturn, fullRepayment: fullRepayment, repaymentType: repaymentType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Loan Repayment History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/repay/history
  Requires signature: true
  """
  def get_flexible_loan_repayment_history_v2(client, loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/repay/history",
          query: [loanCoin: loanCoin, collateralCoin: collateralCoin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
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
  Path: /sapi/v2/loan/flexible/repay/rate
  Requires signature: true
  """
  def check_collateral_repay_rate_v2(client, loanCoin, collateralCoin, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/repay/rate",
          query: [loanCoin: loanCoin, collateralCoin: collateralCoin, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Flexible Loan Interest Rate History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/interestRateHistory
  Requires signature: true
  """
  def get_flexible_loan_interest_rate_history_v2(client, coin, recvWindow, startTime: startTime, endTime: endTime, current: current, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/interestRateHistory",
          query: [coin: coin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end