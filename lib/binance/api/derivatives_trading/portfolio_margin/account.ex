defmodule Binance.API.DerivativesTrading.PortfolioMargin.Account do
  @moduledoc false

  @base_urls %{prod_url: "https://papi.binance.com", testnet_url: "https://testnet.binancefuture.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec account_information_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Account Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/account
  Requires signature: true
  Optional: recvWindow
  """
  def account_information_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec fund_collection_by_asset_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Fund Collection by Asset
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/asset-collection
  Requires signature: true
  Required: asset
  Optional: recvWindow
  """
  def fund_collection_by_asset_v1(client, asset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/asset-collection",
          query: [asset: asset, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec fund_auto_collection_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Fund Auto-collection
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/auto-collection
  Requires signature: true
  Optional: recvWindow
  """
  def fund_auto_collection_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/auto-collection",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec account_balance_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Account Balance
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/balance
  Requires signature: true
  Optional: asset, recvWindow
  """
  def account_balance_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/balance",
          query: [asset: Keyword.get(opts, :asset), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec bnb_transfer_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  BNB transfer
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/bnb-transfer
  Requires signature: true
  Required: amount, transferSide
  Optional: recvWindow
  """
  def bnb_transfer_v1(client, amount, transferSide, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/bnb-transfer",
          query: [amount: amount, transferSide: transferSide, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_cm_account_detail_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get CM Account Detail
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/account
  Requires signature: true
  Optional: recvWindow
  """
  def get_cm_account_detail_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_user_commission_rate_for_cm_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get User Commission Rate for CM
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/commissionRate
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def get_user_commission_rate_for_cm_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/commissionRate",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_cm_income_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get CM Income History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/income
  Requires signature: true
  Optional: symbol, incomeType, startTime, endTime, page, limit, recvWindow
  """
  def get_cm_income_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/income",
          query: [symbol: Keyword.get(opts, :symbol), incomeType: Keyword.get(opts, :incomeType), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), page: Keyword.get(opts, :page), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec change_cm_initial_leverage_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Change CM Initial Leverage
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/cm/leverage
  Requires signature: true
  Required: symbol, leverage
  Optional: recvWindow
  """
  def change_cm_initial_leverage_v1(client, symbol, leverage, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/cm/leverage",
          query: [symbol: symbol, leverage: leverage, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec cm_notional_and_leverage_brackets_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  CM Notional and Leverage Brackets
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/leverageBracket
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def cm_notional_and_leverage_brackets_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/leverageBracket",
          query: [symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_cm_position_information_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query CM Position Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/positionRisk
  Requires signature: true
  Optional: marginAsset, pair, recvWindow
  """
  def query_cm_position_information_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/positionRisk",
          query: [marginAsset: Keyword.get(opts, :marginAsset), pair: Keyword.get(opts, :pair), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec change_cm_position_mode_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Change CM Position Mode
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/cm/positionSide/dual
  Requires signature: true
  Required: dualSidePosition
  Optional: recvWindow
  """
  def change_cm_position_mode_v1(client, dualSidePosition, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/cm/positionSide/dual",
          query: [dualSidePosition: dualSidePosition, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_cm_current_position_mode_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get CM Current Position Mode
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/positionSide/dual
  Requires signature: true
  Optional: recvWindow
  """
  def get_cm_current_position_mode_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/positionSide/dual",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_margin_borrow_loan_interest_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Margin Borrow/Loan Interest History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/marginInterestHistory
  Requires signature: true
  Optional: asset, startTime, endTime, current, size, archived, recvWindow
  """
  def get_margin_borrow_loan_interest_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/marginInterestHistory",
          query: [asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), archived: Keyword.get(opts, :archived), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_margin_loan_record_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Margin Loan Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/marginLoan
  Requires signature: true
  Required: asset
  Optional: txId, startTime, endTime, current, size, archived, recvWindow
  """
  def query_margin_loan_record_v1(client, asset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/marginLoan",
          query: [asset: asset, txId: Keyword.get(opts, :txId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), archived: Keyword.get(opts, :archived), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec margin_max_borrow_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Margin Max Borrow
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/maxBorrowable
  Requires signature: true
  Required: asset
  Optional: recvWindow
  """
  def margin_max_borrow_v1(client, asset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/maxBorrowable",
          query: [asset: asset, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_margin_max_withdraw_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Margin Max Withdraw
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/maxWithdraw
  Requires signature: true
  Required: asset
  Optional: recvWindow
  """
  def query_margin_max_withdraw_v1(client, asset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/maxWithdraw",
          query: [asset: asset, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_margin_repay_record_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Margin repay Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/repayLoan
  Requires signature: true
  Required: asset
  Optional: txId, startTime, endTime, current, size, archived, recvWindow
  """
  def query_margin_repay_record_v1(client, asset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/repayLoan",
          query: [asset: asset, txId: Keyword.get(opts, :txId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), archived: Keyword.get(opts, :archived), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_portfolio_margin_negative_balance_interest_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Portfolio Margin Negative Balance Interest History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/portfolio/interest-history
  Requires signature: true
  Optional: asset, startTime, endTime, size, recvWindow
  """
  def query_portfolio_margin_negative_balance_interest_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/portfolio/interest-history",
          query: [asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_user_negative_balance_auto_exchange_record_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query User Negative Balance Auto Exchange Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/portfolio/negative-balance-exchange-record
  Requires signature: true
  Required: startTime, endTime
  Optional: recvWindow
  """
  def query_user_negative_balance_auto_exchange_record_v1(client, startTime, endTime, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/portfolio/negative-balance-exchange-record",
          query: [startTime: startTime, endTime: endTime, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_user_rate_limit_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query User Rate Limit
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/rateLimit/order
  Requires signature: true
  Optional: recvWindow
  """
  def query_user_rate_limit_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/rateLimit/order",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec repay_futures_negative_balance_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Repay futures Negative Balance
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /papi/v1/repay-futures-negative-balance
  Requires signature: true
  Optional: recvWindow
  """
  def repay_futures_negative_balance_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/repay-futures-negative-balance",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec change_auto_repay_futures_status_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Change Auto-repay-futures Status
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/repay-futures-switch
  Requires signature: true
  Required: autoRepay
  Optional: recvWindow
  """
  def change_auto_repay_futures_status_v1(client, autoRepay, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/repay-futures-switch",
          query: [autoRepay: autoRepay, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_auto_repay_futures_status_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Auto-repay-futures Status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/repay-futures-switch
  Requires signature: true
  Optional: recvWindow
  """
  def get_auto_repay_futures_status_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/repay-futures-switch",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_um_account_detail_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get UM Account Detail
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/account
  Requires signature: true
  Optional: recvWindow
  """
  def get_um_account_detail_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec um_futures_account_configuration_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  UM Futures Account Configuration
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/accountConfig
  Requires signature: true
  Optional: recvWindow
  """
  def um_futures_account_configuration_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/accountConfig",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec portfolio_margin_um_trading_quantitative_rules_indicators_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Portfolio Margin UM Trading Quantitative Rules Indicators
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/apiTradingStatus
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def portfolio_margin_um_trading_quantitative_rules_indicators_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/apiTradingStatus",
          query: [symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_user_commission_rate_for_um_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get User Commission Rate for UM
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/commissionRate
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def get_user_commission_rate_for_um_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/commissionRate",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_um_income_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get UM Income History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/income
  Requires signature: true
  Optional: symbol, incomeType, startTime, endTime, page, limit, recvWindow
  """
  def get_um_income_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/income",
          query: [symbol: Keyword.get(opts, :symbol), incomeType: Keyword.get(opts, :incomeType), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), page: Keyword.get(opts, :page), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_download_id_for_um_futures_transaction_history_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Download Id For UM Futures Transaction History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/income/asyn
  Requires signature: true
  Required: startTime, endTime
  Optional: recvWindow
  """
  def get_download_id_for_um_futures_transaction_history_v1(client, startTime, endTime, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/income/asyn",
          query: [startTime: startTime, endTime: endTime, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_um_futures_transaction_download_link_by_id_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get UM Futures Transaction Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/income/asyn/id
  Requires signature: true
  Required: downloadId
  Optional: recvWindow
  """
  def get_um_futures_transaction_download_link_by_id_v1(client, downloadId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/income/asyn/id",
          query: [downloadId: downloadId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec change_um_initial_leverage_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Change UM Initial Leverage
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/um/leverage
  Requires signature: true
  Required: symbol, leverage
  Optional: recvWindow
  """
  def change_um_initial_leverage_v1(client, symbol, leverage, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/leverage",
          query: [symbol: symbol, leverage: leverage, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec um_notional_and_leverage_brackets_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  UM Notional and Leverage Brackets
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/leverageBracket
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def um_notional_and_leverage_brackets_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/leverageBracket",
          query: [symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_download_id_for_um_futures_order_history_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Download Id For UM Futures Order History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/order/asyn
  Requires signature: true
  Required: startTime, endTime
  Optional: recvWindow
  """
  def get_download_id_for_um_futures_order_history_v1(client, startTime, endTime, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/order/asyn",
          query: [startTime: startTime, endTime: endTime, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_um_futures_order_download_link_by_id_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get UM Futures Order Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/order/asyn/id
  Requires signature: true
  Required: downloadId
  Optional: recvWindow
  """
  def get_um_futures_order_download_link_by_id_v1(client, downloadId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/order/asyn/id",
          query: [downloadId: downloadId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_um_position_information_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query UM Position Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/positionRisk
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def query_um_position_information_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/positionRisk",
          query: [symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec change_um_position_mode_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Change UM Position Mode
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/um/positionSide/dual
  Requires signature: true
  Required: dualSidePosition
  Optional: recvWindow
  """
  def change_um_position_mode_v1(client, dualSidePosition, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/positionSide/dual",
          query: [dualSidePosition: dualSidePosition, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_um_current_position_mode_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get UM Current Position Mode
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/positionSide/dual
  Requires signature: true
  Optional: recvWindow
  """
  def get_um_current_position_mode_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/positionSide/dual",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec um_futures_symbol_configuration_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  UM Futures Symbol Configuration
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/symbolConfig
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def um_futures_symbol_configuration_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/symbolConfig",
          query: [symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_download_id_for_um_futures_trade_history_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Download Id For UM Futures Trade History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/trade/asyn
  Requires signature: true
  Required: startTime, endTime
  Optional: recvWindow
  """
  def get_download_id_for_um_futures_trade_history_v1(client, startTime, endTime, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/trade/asyn",
          query: [startTime: startTime, endTime: endTime, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_um_futures_trade_download_link_by_id_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get UM Futures Trade Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/trade/asyn/id
  Requires signature: true
  Required: downloadId
  Optional: recvWindow
  """
  def get_um_futures_trade_download_link_by_id_v1(client, downloadId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/trade/asyn/id",
          query: [downloadId: downloadId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_um_account_detail_v2(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get UM Account Detail V2
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v2/um/account
  Requires signature: true
  Optional: recvWindow
  """
  def get_um_account_detail_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v2/um/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end