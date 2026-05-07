defmodule Binance.API.SubAccount.ManagedSubAccount do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec query_managed_sub_account_snapshot_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Managed Sub-account Snapshot
  Variant: User Data
  Tags: for_investor_master_account, user_data
  Method: GET
  Path: /sapi/v1/managed-subaccount/accountSnapshot
  Requires signature: true
  Required: email, type
  Optional: startTime, endTime, limit, recvWindow
  """
  def query_managed_sub_account_snapshot_v1(client, email, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/managed-subaccount/accountSnapshot",
          query: [email: email, type: type, startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_managed_sub_account_asset_details_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Managed Sub-account Asset Details
  Variant: User Data
  Tags: for_investor_master_account, user_data
  Method: GET
  Path: /sapi/v1/managed-subaccount/asset
  Requires signature: true
  Required: email
  Optional: recvWindow
  """
  def query_managed_sub_account_asset_details_v1(client, email, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/managed-subaccount/asset",
          query: [email: email, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec deposit_assets_into_the_managed_sub_account_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Deposit Assets Into The Managed Sub-account
  Variant: User Data
  Tags: for_investor_master_account, user_data
  Method: POST
  Path: /sapi/v1/managed-subaccount/deposit
  Requires signature: true
  Required: toEmail, asset, amount
  Optional: recvWindow
  """
  def deposit_assets_into_the_managed_sub_account_v1(client, toEmail, asset, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/managed-subaccount/deposit",
          query: [toEmail: toEmail, asset: asset, amount: amount, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_managed_sub_account_deposit_address_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Managed Sub-account Deposit Address
  Variant: User Data
  Tags: for_investor_master_account, user_data
  Method: GET
  Path: /sapi/v1/managed-subaccount/deposit/address
  Requires signature: true
  Required: email, coin
  Optional: network, amount, recvWindow
  """
  def get_managed_sub_account_deposit_address_v1(client, email, coin, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/managed-subaccount/deposit/address",
          query: [email: email, coin: coin, network: Keyword.get(opts, :network), amount: Keyword.get(opts, :amount), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_managed_sub_account_futures_asset_details_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Managed Sub-account Futures Asset Details
  Variant: User Data
  Tags: for_investor_master_account, user_data
  Method: GET
  Path: /sapi/v1/managed-subaccount/fetch-future-asset
  Requires signature: true
  Required: email
  Optional: accountType
  """
  def query_managed_sub_account_futures_asset_details_v1(client, email, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/managed-subaccount/fetch-future-asset",
          query: [email: email, accountType: Keyword.get(opts, :accountType), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_managed_sub_account_list_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Managed Sub-account List
  Variant: User Data
  Tags: for_investor, user_data
  Method: GET
  Path: /sapi/v1/managed-subaccount/info
  Requires signature: true
  Optional: email, page, limit, recvWindow
  """
  def query_managed_sub_account_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/managed-subaccount/info",
          query: [email: Keyword.get(opts, :email), page: Keyword.get(opts, :page), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_managed_sub_account_margin_asset_details_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Managed Sub-account Margin Asset Details
  Variant: User Data
  Tags: for_investor_master_account, user_data
  Method: GET
  Path: /sapi/v1/managed-subaccount/marginAsset
  Requires signature: true
  Required: email
  Optional: accountType
  """
  def query_managed_sub_account_margin_asset_details_v1(client, email, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/managed-subaccount/marginAsset",
          query: [email: email, accountType: Keyword.get(opts, :accountType), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_managed_sub_account_transfer_log_for_trading_team_sub_account_v1(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Managed Sub Account Transfer Log
  Variant: User Data
  Tags: for_trading_team_sub_account, user_data
  Method: GET
  Path: /sapi/v1/managed-subaccount/query-trans-log
  Requires signature: true
  Required: startTime, endTime, page, limit
  Optional: transfers, transferFunctionAccountType, recvWindow
  """
  def query_managed_sub_account_transfer_log_for_trading_team_sub_account_v1(client, startTime, endTime, page, limit, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/managed-subaccount/query-trans-log",
          query: [startTime: startTime, endTime: endTime, page: page, limit: limit, transfers: Keyword.get(opts, :transfers), transferFunctionAccountType: Keyword.get(opts, :transferFunctionAccountType), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_managed_sub_account_transfer_log_for_investor_master_account_v1(Binance.Client.t(), term(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Managed Sub Account Transfer Log
  Variant: User Data
  Tags: for_investor_master_account, user_data
  Method: GET
  Path: /sapi/v1/managed-subaccount/queryTransLogForInvestor
  Requires signature: true
  Required: email, startTime, endTime, page, limit
  Optional: transfers, transferFunctionAccountType
  """
  def query_managed_sub_account_transfer_log_for_investor_master_account_v1(client, email, startTime, endTime, page, limit, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/managed-subaccount/queryTransLogForInvestor",
          query: [email: email, startTime: startTime, endTime: endTime, page: page, limit: limit, transfers: Keyword.get(opts, :transfers), transferFunctionAccountType: Keyword.get(opts, :transferFunctionAccountType), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_managed_sub_account_transfer_log_for_trading_team_master_account_v1(Binance.Client.t(), term(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Managed Sub Account Transfer Log
  Variant: User Data
  Tags: for_trading_team_master_account, user_data
  Method: GET
  Path: /sapi/v1/managed-subaccount/queryTransLogForTradeParent
  Requires signature: true
  Required: email, startTime, endTime, page, limit
  Optional: transfers, transferFunctionAccountType
  """
  def query_managed_sub_account_transfer_log_for_trading_team_master_account_v1(client, email, startTime, endTime, page, limit, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/managed-subaccount/queryTransLogForTradeParent",
          query: [email: email, startTime: startTime, endTime: endTime, page: page, limit: limit, transfers: Keyword.get(opts, :transfers), transferFunctionAccountType: Keyword.get(opts, :transferFunctionAccountType), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec withdrawl_assets_from_the_managed_sub_account_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Withdrawl Assets From The Managed Sub-account
  Variant: User Data
  Tags: for_investor_master_account, user_data
  Method: POST
  Path: /sapi/v1/managed-subaccount/withdraw
  Requires signature: true
  Required: fromEmail, asset, amount
  Optional: transferDate, recvWindow
  """
  def withdrawl_assets_from_the_managed_sub_account_v1(client, fromEmail, asset, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/managed-subaccount/withdraw",
          query: [fromEmail: fromEmail, asset: asset, amount: amount, transferDate: Keyword.get(opts, :transferDate), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end