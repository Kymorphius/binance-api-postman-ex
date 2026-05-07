defmodule Binance.API.DerivativesTrading.PortfolioMargin.Account do
  @moduledoc false

  @base_urls %{prod_url: "https://papi.binance.com", testnet_url: "https://testnet.binancefuture.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Account Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/account
  Requires signature: true
  """
  def account_information_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/account",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Fund Collection by Asset
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/asset-collection
  Requires signature: true
  """
  def fund_collection_by_asset_v1(client, asset, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/asset-collection",
          query: [asset: asset, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Fund Auto-collection
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/auto-collection
  Requires signature: true
  """
  def fund_auto_collection_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/auto-collection",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Account Balance
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/balance
  Requires signature: true
  """
  def account_balance_v1(client, asset: asset, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/balance",
          query: [asset: asset, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  BNB transfer
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/bnb-transfer
  Requires signature: true
  """
  def bnb_transfer_v1(client, amount, transferSide, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/bnb-transfer",
          query: [amount: amount, transferSide: transferSide, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get CM Account Detail
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/account
  Requires signature: true
  """
  def get_cm_account_detail_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/account",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get User Commission Rate for CM
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/commissionRate
  Requires signature: true
  """
  def get_user_commission_rate_for_cm_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/commissionRate",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get CM Income History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/income
  Requires signature: true
  """
  def get_cm_income_history_v1(client, symbol: symbol, incomeType: incomeType, startTime: startTime, endTime: endTime, page: page, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/income",
          query: [symbol: symbol, incomeType: incomeType, startTime: startTime, endTime: endTime, page: page, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Change CM Initial Leverage
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/cm/leverage
  Requires signature: true
  """
  def change_cm_initial_leverage_v1(client, symbol, leverage, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/cm/leverage",
          query: [symbol: symbol, leverage: leverage, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  CM Notional and Leverage Brackets
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/leverageBracket
  Requires signature: true
  """
  def cm_notional_and_leverage_brackets_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/leverageBracket",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query CM Position Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/positionRisk
  Requires signature: true
  """
  def query_cm_position_information_v1(client, marginAsset: marginAsset, pair: pair, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/positionRisk",
          query: [marginAsset: marginAsset, pair: pair, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Change CM Position Mode
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/cm/positionSide/dual
  Requires signature: true
  """
  def change_cm_position_mode_v1(client, dualSidePosition, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/cm/positionSide/dual",
          query: [dualSidePosition: dualSidePosition, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get CM Current Position Mode
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/positionSide/dual
  Requires signature: true
  """
  def get_cm_current_position_mode_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/positionSide/dual",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Margin Borrow/Loan Interest History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/marginInterestHistory
  Requires signature: true
  """
  def get_margin_borrow_loan_interest_history_v1(client, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, archived: archived, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/marginInterestHistory",
          query: [asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, archived: archived, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin Loan Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/marginLoan
  Requires signature: true
  """
  def query_margin_loan_record_v1(client, asset, txId: txId, startTime: startTime, endTime: endTime, current: current, size: size, archived: archived, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/marginLoan",
          query: [asset: asset, txId: txId, startTime: startTime, endTime: endTime, current: current, size: size, archived: archived, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Max Borrow
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/maxBorrowable
  Requires signature: true
  """
  def margin_max_borrow_v1(client, asset, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/maxBorrowable",
          query: [asset: asset, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin Max Withdraw
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/maxWithdraw
  Requires signature: true
  """
  def query_margin_max_withdraw_v1(client, asset, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/maxWithdraw",
          query: [asset: asset, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin repay Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/repayLoan
  Requires signature: true
  """
  def query_margin_repay_record_v1(client, asset, txId: txId, startTime: startTime, endTime: endTime, current: current, size: size, archived: archived, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/repayLoan",
          query: [asset: asset, txId: txId, startTime: startTime, endTime: endTime, current: current, size: size, archived: archived, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Portfolio Margin Negative Balance Interest History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/portfolio/interest-history
  Requires signature: true
  """
  def query_portfolio_margin_negative_balance_interest_history_v1(client, asset: asset, startTime: startTime, endTime: endTime, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/portfolio/interest-history",
          query: [asset: asset, startTime: startTime, endTime: endTime, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query User Negative Balance Auto Exchange Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/portfolio/negative-balance-exchange-record
  Requires signature: true
  """
  def query_user_negative_balance_auto_exchange_record_v1(client, startTime, endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/portfolio/negative-balance-exchange-record",
          query: [startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query User Rate Limit
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/rateLimit/order
  Requires signature: true
  """
  def query_user_rate_limit_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/rateLimit/order",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Repay futures Negative Balance
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /papi/v1/repay-futures-negative-balance
  Requires signature: true
  """
  def repay_futures_negative_balance_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/repay-futures-negative-balance",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Change Auto-repay-futures Status
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/repay-futures-switch
  Requires signature: true
  """
  def change_auto_repay_futures_status_v1(client, autoRepay, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/repay-futures-switch",
          query: [autoRepay: autoRepay, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Auto-repay-futures Status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/repay-futures-switch
  Requires signature: true
  """
  def get_auto_repay_futures_status_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/repay-futures-switch",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get UM Account Detail
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/account
  Requires signature: true
  """
  def get_um_account_detail_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/account",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  UM Futures Account Configuration
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/accountConfig
  Requires signature: true
  """
  def um_futures_account_configuration_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/accountConfig",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Portfolio Margin UM Trading Quantitative Rules Indicators
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/apiTradingStatus
  Requires signature: true
  """
  def portfolio_margin_um_trading_quantitative_rules_indicators_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/apiTradingStatus",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get User Commission Rate for UM
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/commissionRate
  Requires signature: true
  """
  def get_user_commission_rate_for_um_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/commissionRate",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get UM Income History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/income
  Requires signature: true
  """
  def get_um_income_history_v1(client, symbol: symbol, incomeType: incomeType, startTime: startTime, endTime: endTime, page: page, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/income",
          query: [symbol: symbol, incomeType: incomeType, startTime: startTime, endTime: endTime, page: page, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Download Id For UM Futures Transaction History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/income/asyn
  Requires signature: true
  """
  def get_download_id_for_um_futures_transaction_history_v1(client, startTime, endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/income/asyn",
          query: [startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get UM Futures Transaction Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/income/asyn/id
  Requires signature: true
  """
  def get_um_futures_transaction_download_link_by_id_v1(client, downloadId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/income/asyn/id",
          query: [downloadId: downloadId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Change UM Initial Leverage
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/um/leverage
  Requires signature: true
  """
  def change_um_initial_leverage_v1(client, symbol, leverage, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/leverage",
          query: [symbol: symbol, leverage: leverage, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  UM Notional and Leverage Brackets
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/leverageBracket
  Requires signature: true
  """
  def um_notional_and_leverage_brackets_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/leverageBracket",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Download Id For UM Futures Order History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/order/asyn
  Requires signature: true
  """
  def get_download_id_for_um_futures_order_history_v1(client, startTime, endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/order/asyn",
          query: [startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get UM Futures Order Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/order/asyn/id
  Requires signature: true
  """
  def get_um_futures_order_download_link_by_id_v1(client, downloadId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/order/asyn/id",
          query: [downloadId: downloadId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query UM Position Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/positionRisk
  Requires signature: true
  """
  def query_um_position_information_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/positionRisk",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Change UM Position Mode
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/um/positionSide/dual
  Requires signature: true
  """
  def change_um_position_mode_v1(client, dualSidePosition, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/positionSide/dual",
          query: [dualSidePosition: dualSidePosition, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get UM Current Position Mode
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/positionSide/dual
  Requires signature: true
  """
  def get_um_current_position_mode_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/positionSide/dual",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  UM Futures Symbol Configuration
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/symbolConfig
  Requires signature: true
  """
  def um_futures_symbol_configuration_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/symbolConfig",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Download Id For UM Futures Trade History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/trade/asyn
  Requires signature: true
  """
  def get_download_id_for_um_futures_trade_history_v1(client, startTime, endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/trade/asyn",
          query: [startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get UM Futures Trade Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/trade/asyn/id
  Requires signature: true
  """
  def get_um_futures_trade_download_link_by_id_v1(client, downloadId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/trade/asyn/id",
          query: [downloadId: downloadId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get UM Account Detail V2
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v2/um/account
  Requires signature: true
  """
  def get_um_account_detail_v2(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v2/um/account",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end