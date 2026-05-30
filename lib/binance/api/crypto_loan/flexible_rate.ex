defmodule Binance.API.CryptoLoan.FlexibleRate do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec flexible_loan_adjust_ltv_v2(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Flexible Loan Adjust LTV
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v2/loan/flexible/adjust/ltv
  Requires signature: true
  Required: loanCoin, collateralCoin, adjustmentAmount, direction
  Optional: recvWindow
  """
  def flexible_loan_adjust_ltv_v2(
        client,
        loanCoin,
        collateralCoin,
        adjustmentAmount,
        direction,
        opts \\ []
      ) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/adjust/ltv",
          query: [
            loanCoin: loanCoin,
            collateralCoin: collateralCoin,
            adjustmentAmount: adjustmentAmount,
            direction: direction,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec flexible_loan_borrow_v2(Binance.Client.t(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Flexible Loan Borrow
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v2/loan/flexible/borrow
  Requires signature: true
  Required: loanCoin, collateralCoin
  Optional: loanAmount, collateralAmount, recvWindow
  """
  def flexible_loan_borrow_v2(client, loanCoin, collateralCoin, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/borrow",
          query: [
            loanCoin: loanCoin,
            loanAmount: Keyword.get(opts, :loanAmount),
            collateralCoin: collateralCoin,
            collateralAmount: Keyword.get(opts, :collateralAmount),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_flexible_loan_borrow_history_v2(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Loan Borrow History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/borrow/history
  Requires signature: true
  Optional: loanCoin, collateralCoin, startTime, endTime, current, limit, recvWindow
  """
  def get_flexible_loan_borrow_history_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/borrow/history",
          query: [
            loanCoin: Keyword.get(opts, :loanCoin),
            collateralCoin: Keyword.get(opts, :collateralCoin),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            limit: Keyword.get(opts, :limit),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_flexible_loan_collateral_assets_data_v2(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Loan Collateral Assets Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/collateral/data
  Requires signature: true
  Optional: collateralCoin, recvWindow
  """
  def get_flexible_loan_collateral_assets_data_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/collateral/data",
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

  @spec get_flexible_loan_liquidation_history_v2(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Loan Liquidation History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/liquidation/history
  Requires signature: true
  Optional: loanCoin, collateralCoin, startTime, endTime, current, limit, recvWindow
  """
  def get_flexible_loan_liquidation_history_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/liquidation/history",
          query: [
            loanCoin: Keyword.get(opts, :loanCoin),
            collateralCoin: Keyword.get(opts, :collateralCoin),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            limit: Keyword.get(opts, :limit),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_flexible_loan_assets_data_v2(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Loan Assets Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/loanable/data
  Requires signature: true
  Optional: loanCoin, recvWindow
  """
  def get_flexible_loan_assets_data_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/loanable/data",
          query: [
            loanCoin: Keyword.get(opts, :loanCoin),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_flexible_loan_ltv_adjustment_history_v2(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Loan LTV Adjustment History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/ltv/adjustment/history
  Requires signature: true
  Optional: loanCoin, collateralCoin, startTime, endTime, current, limit, recvWindow
  """
  def get_flexible_loan_ltv_adjustment_history_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/ltv/adjustment/history",
          query: [
            loanCoin: Keyword.get(opts, :loanCoin),
            collateralCoin: Keyword.get(opts, :collateralCoin),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            limit: Keyword.get(opts, :limit),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_flexible_loan_ongoing_orders_v2(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Loan Ongoing Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/ongoing/orders
  Requires signature: true
  Optional: loanCoin, collateralCoin, current, limit, recvWindow
  """
  def get_flexible_loan_ongoing_orders_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/ongoing/orders",
          query: [
            loanCoin: Keyword.get(opts, :loanCoin),
            collateralCoin: Keyword.get(opts, :collateralCoin),
            current: Keyword.get(opts, :current),
            limit: Keyword.get(opts, :limit),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec flexible_loan_repay_v2(Binance.Client.t(), term(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Flexible Loan Repay
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v2/loan/flexible/repay
  Requires signature: true
  Required: loanCoin, collateralCoin, repayAmount
  Optional: collateralReturn, fullRepayment, repaymentType, recvWindow
  """
  def flexible_loan_repay_v2(client, loanCoin, collateralCoin, repayAmount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/repay",
          query: [
            loanCoin: loanCoin,
            collateralCoin: collateralCoin,
            repayAmount: repayAmount,
            collateralReturn: Keyword.get(opts, :collateralReturn),
            fullRepayment: Keyword.get(opts, :fullRepayment),
            repaymentType: Keyword.get(opts, :repaymentType),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_flexible_loan_repayment_history_v2(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Loan Repayment History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/repay/history
  Requires signature: true
  Optional: loanCoin, collateralCoin, startTime, endTime, current, limit, recvWindow
  """
  def get_flexible_loan_repayment_history_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/repay/history",
          query: [
            loanCoin: Keyword.get(opts, :loanCoin),
            collateralCoin: Keyword.get(opts, :collateralCoin),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            limit: Keyword.get(opts, :limit),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec check_collateral_repay_rate_v2(Binance.Client.t(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Check Collateral Repay Rate
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/flexible/repay/rate
  Requires signature: true
  Required: loanCoin, collateralCoin
  Optional: recvWindow
  """
  def check_collateral_repay_rate_v2(client, loanCoin, collateralCoin, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/flexible/repay/rate",
          query: [
            loanCoin: loanCoin,
            collateralCoin: collateralCoin,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_flexible_loan_interest_rate_history_v2(
          Binance.Client.t(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Flexible Loan Interest Rate History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/loan/interestRateHistory
  Requires signature: true
  Required: coin, recvWindow
  Optional: startTime, endTime, current, limit
  """
  def get_flexible_loan_interest_rate_history_v2(client, coin, recvWindow, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/loan/interestRateHistory",
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
end
