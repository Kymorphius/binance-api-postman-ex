defmodule Binance.API.DerivativesTrading.PortfolioMarginPro.Account do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Get Portfolio Margin Pro Account Info
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/account
  Requires signature: true
  """
  def get_portfolio_margin_pro_account_info_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/account",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Fund Collection by Asset
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/portfolio/asset-collection
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
          url: "/sapi/v1/portfolio/asset-collection",
          query: [asset: asset, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Fund Auto-collection
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/portfolio/auto-collection
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
          url: "/sapi/v1/portfolio/auto-collection",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Portfolio Margin Pro Account Balance
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/balance
  Requires signature: true
  """
  def get_portfolio_margin_pro_account_balance_v1(client, asset: asset, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/balance",
          query: [asset: asset, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  BNB transfer
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/portfolio/bnb-transfer
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
          url: "/sapi/v1/portfolio/bnb-transfer",
          query: [amount: amount, transferSide: transferSide, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Delta Mode Status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/delta-mode
  Requires signature: true
  """
  def get_delta_mode_status_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/delta-mode",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Switch Delta Mode
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/portfolio/delta-mode
  Requires signature: true
  """
  def switch_delta_mode_v1(client, deltaEnabled, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/portfolio/delta-mode",
          query: [deltaEnabled: deltaEnabled, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Transferable Earn Asset Balance for Portfolio Margin
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/earn-asset-balance
  Requires signature: true
  """
  def get_transferable_earn_asset_balance_for_portfolio_margin_v1(client, asset, transferType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/earn-asset-balance",
          query: [asset: asset, transferType: transferType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Transfer LDUSDT/RWUSD for Portfolio Margin
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/portfolio/earn-asset-transfer
  Requires signature: true
  """
  def transfer_ldusdt_rwusd_for_portfolio_margin_v1(client, asset, transferType, amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/portfolio/earn-asset-transfer",
          query: [asset: asset, transferType: transferType, amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Portfolio Margin Pro Negative Balance Interest History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/interest-history
  Requires signature: true
  """
  def query_portfolio_margin_pro_negative_balance_interest_history_v1(client, asset: asset, startTime: startTime, endTime: endTime, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/interest-history",
          query: [asset: asset, startTime: startTime, endTime: endTime, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Delete Margin Call Level
  Variant: User Data
  Tags: user_data
  Method: DELETE
  Path: /sapi/v1/portfolio/margin-call-level
  Requires signature: true
  """
  def delete_margin_call_level_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/portfolio/margin-call-level",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Margin Call Level
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/margin-call-level
  Requires signature: true
  """
  def get_margin_call_level_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/margin-call-level",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Set Margin Call Level
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/portfolio/margin-call-level
  Requires signature: true
  """
  def set_margin_call_level_v1(client, marginCallLevel, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/portfolio/margin-call-level",
          query: [marginCallLevel: marginCallLevel, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Portfolio Margin Pro Bankruptcy Loan Amount
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/pmLoan
  Requires signature: true
  """
  def query_portfolio_margin_pro_bankruptcy_loan_amount_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/pmLoan",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Portfolio Margin Pro Bankruptcy Loan Repay History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/pmloan-history
  Requires signature: true
  """
  def query_portfolio_margin_pro_bankruptcy_loan_repay_history_v1(client, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/pmloan-history",
          query: [startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Portfolio Margin Pro Bankruptcy Loan Repay
  Method: POST
  Path: /sapi/v1/portfolio/repay
  Requires signature: true
  """
  def portfolio_margin_pro_bankruptcy_loan_repay_v1(client, from: from, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/portfolio/repay",
          query: [from: from, recvWindow: recvWindow, timestamp: nil],
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
  Path: /sapi/v1/portfolio/repay-futures-negative-balance
  Requires signature: true
  """
  def repay_futures_negative_balance_v1(client, from: from, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/portfolio/repay-futures-negative-balance",
          query: [from: from, recvWindow: recvWindow, timestamp: nil],
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
  Path: /sapi/v1/portfolio/repay-futures-switch
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
          url: "/sapi/v1/portfolio/repay-futures-switch",
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
  Path: /sapi/v1/portfolio/repay-futures-switch
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
          url: "/sapi/v1/portfolio/repay-futures-switch",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Portfolio Margin Pro SPAN Account Info
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/portfolio/account
  Requires signature: true
  """
  def get_portfolio_margin_pro_span_account_info_v2(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/portfolio/account",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end