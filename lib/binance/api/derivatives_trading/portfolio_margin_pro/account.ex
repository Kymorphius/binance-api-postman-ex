defmodule Binance.API.DerivativesTrading.PortfolioMarginPro.Account do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_portfolio_margin_pro_account_info_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Portfolio Margin Pro Account Info
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/account
  Requires signature: true
  Optional: recvWindow
  """
  def get_portfolio_margin_pro_account_info_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/account",
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
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/portfolio/asset-collection
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
          url: "/sapi/v1/portfolio/asset-collection",
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
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/portfolio/auto-collection
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
          url: "/sapi/v1/portfolio/auto-collection",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_portfolio_margin_pro_account_balance_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Portfolio Margin Pro Account Balance
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/balance
  Requires signature: true
  Optional: asset, recvWindow
  """
  def get_portfolio_margin_pro_account_balance_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/balance",
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
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/portfolio/bnb-transfer
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
          url: "/sapi/v1/portfolio/bnb-transfer",
          query: [amount: amount, transferSide: transferSide, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_delta_mode_status_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Delta Mode Status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/delta-mode
  Requires signature: true
  Optional: recvWindow
  """
  def get_delta_mode_status_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/delta-mode",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec switch_delta_mode_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Switch Delta Mode
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/portfolio/delta-mode
  Requires signature: true
  Required: deltaEnabled
  Optional: recvWindow
  """
  def switch_delta_mode_v1(client, deltaEnabled, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/portfolio/delta-mode",
          query: [deltaEnabled: deltaEnabled, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_transferable_earn_asset_balance_for_portfolio_margin_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Transferable Earn Asset Balance for Portfolio Margin
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/earn-asset-balance
  Requires signature: true
  Required: asset, transferType
  Optional: recvWindow
  """
  def get_transferable_earn_asset_balance_for_portfolio_margin_v1(client, asset, transferType, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/earn-asset-balance",
          query: [asset: asset, transferType: transferType, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec transfer_ldusdt_rwusd_for_portfolio_margin_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Transfer LDUSDT/RWUSD for Portfolio Margin
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/portfolio/earn-asset-transfer
  Requires signature: true
  Required: asset, transferType, amount
  Optional: recvWindow
  """
  def transfer_ldusdt_rwusd_for_portfolio_margin_v1(client, asset, transferType, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/portfolio/earn-asset-transfer",
          query: [asset: asset, transferType: transferType, amount: amount, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_portfolio_margin_pro_negative_balance_interest_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Portfolio Margin Pro Negative Balance Interest History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/interest-history
  Requires signature: true
  Optional: asset, startTime, endTime, size, recvWindow
  """
  def query_portfolio_margin_pro_negative_balance_interest_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/interest-history",
          query: [asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec delete_margin_call_level_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Delete Margin Call Level
  Variant: User Data
  Tags: user_data
  Method: DELETE
  Path: /sapi/v1/portfolio/margin-call-level
  Requires signature: true
  Optional: recvWindow
  """
  def delete_margin_call_level_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/portfolio/margin-call-level",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_margin_call_level_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Margin Call Level
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/margin-call-level
  Requires signature: true
  Optional: recvWindow
  """
  def get_margin_call_level_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/margin-call-level",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec set_margin_call_level_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Set Margin Call Level
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/portfolio/margin-call-level
  Requires signature: true
  Required: marginCallLevel
  Optional: recvWindow
  """
  def set_margin_call_level_v1(client, marginCallLevel, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/portfolio/margin-call-level",
          query: [marginCallLevel: marginCallLevel, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_portfolio_margin_pro_bankruptcy_loan_amount_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Portfolio Margin Pro Bankruptcy Loan Amount
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/pmLoan
  Requires signature: true
  Optional: recvWindow
  """
  def query_portfolio_margin_pro_bankruptcy_loan_amount_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/pmLoan",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_portfolio_margin_pro_bankruptcy_loan_repay_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Portfolio Margin Pro Bankruptcy Loan Repay History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/portfolio/pmloan-history
  Requires signature: true
  Optional: startTime, endTime, current, size, recvWindow
  """
  def query_portfolio_margin_pro_bankruptcy_loan_repay_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/portfolio/pmloan-history",
          query: [startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec portfolio_margin_pro_bankruptcy_loan_repay_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Portfolio Margin Pro Bankruptcy Loan Repay
  Method: POST
  Path: /sapi/v1/portfolio/repay
  Requires signature: true
  Optional: from, recvWindow
  """
  def portfolio_margin_pro_bankruptcy_loan_repay_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/portfolio/repay",
          query: [from: Keyword.get(opts, :from), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
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
  Path: /sapi/v1/portfolio/repay-futures-negative-balance
  Requires signature: true
  Optional: from, recvWindow
  """
  def repay_futures_negative_balance_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/portfolio/repay-futures-negative-balance",
          query: [from: Keyword.get(opts, :from), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
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
  Path: /sapi/v1/portfolio/repay-futures-switch
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
          url: "/sapi/v1/portfolio/repay-futures-switch",
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
  Path: /sapi/v1/portfolio/repay-futures-switch
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
          url: "/sapi/v1/portfolio/repay-futures-switch",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_portfolio_margin_pro_span_account_info_v2(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Portfolio Margin Pro SPAN Account Info
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v2/portfolio/account
  Requires signature: true
  Optional: recvWindow
  """
  def get_portfolio_margin_pro_span_account_info_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/portfolio/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end