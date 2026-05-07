defmodule Binance.API.CryptoLoan.StableRate do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_loan_borrow_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Loan Borrow History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/borrow/history
  Requires signature: true
  Optional: orderId, loanCoin, collateralCoin, startTime, endTime, current, limit, recvWindow
  """
  def get_loan_borrow_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/borrow/history",
          query: [orderId: Keyword.get(opts, :orderId), loanCoin: Keyword.get(opts, :loanCoin), collateralCoin: Keyword.get(opts, :collateralCoin), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_crypto_loans_income_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Crypto Loans Income History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/income
  Requires signature: true
  Optional: asset, type, startTime, endTime, limit, recvWindow
  """
  def get_crypto_loans_income_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/income",
          query: [asset: Keyword.get(opts, :asset), type: Keyword.get(opts, :type), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_loan_ltv_adjustment_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Loan LTV Adjustment History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/ltv/adjustment/history
  Requires signature: true
  Optional: orderId, loanCoin, collateralCoin, startTime, endTime, current, limit, recvWindow
  """
  def get_loan_ltv_adjustment_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/ltv/adjustment/history",
          query: [orderId: Keyword.get(opts, :orderId), loanCoin: Keyword.get(opts, :loanCoin), collateralCoin: Keyword.get(opts, :collateralCoin), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec check_collateral_repay_rate_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Check Collateral Repay Rate
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/repay/collateral/rate
  Requires signature: true
  Required: loanCoin, collateralCoin, repayAmount
  Optional: recvWindow
  """
  def check_collateral_repay_rate_v1(client, loanCoin, collateralCoin, repayAmount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/repay/collateral/rate",
          query: [loanCoin: loanCoin, collateralCoin: collateralCoin, repayAmount: repayAmount, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_loan_repayment_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Loan Repayment History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/repay/history
  Requires signature: true
  Optional: orderId, loanCoin, collateralCoin, startTime, endTime, current, limit, recvWindow
  """
  def get_loan_repayment_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/repay/history",
          query: [orderId: Keyword.get(opts, :orderId), loanCoin: Keyword.get(opts, :loanCoin), collateralCoin: Keyword.get(opts, :collateralCoin), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end