defmodule Binance.API.Wallet.Capital do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec all_coins_information_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  All Coins' Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/capital/config/getall
  Requires signature: true
  Optional: recvWindow
  """
  def all_coins_information_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/config/getall",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec deposit_address_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Deposit Address
  Variant: User Data
  Tags: supporting_network, user_data
  Method: GET
  Path: /sapi/v1/capital/deposit/address
  Requires signature: true
  Required: coin
  Optional: network, amount, recvWindow
  """
  def deposit_address_v1(client, coin, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/deposit/address",
          query: [coin: coin, network: Keyword.get(opts, :network), amount: Keyword.get(opts, :amount), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec fetch_deposit_address_list_with_network_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Fetch deposit address list with network
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/capital/deposit/address/list
  Requires signature: true
  Required: coin
  Optional: network
  """
  def fetch_deposit_address_list_with_network_v1(client, coin, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/deposit/address/list",
          query: [coin: coin, network: Keyword.get(opts, :network), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec one_click_arrival_deposit_apply_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  One click arrival deposit apply
  Variant: User Data
  Tags: for_expired_address_deposit, user_data
  Method: POST
  Path: /sapi/v1/capital/deposit/credit-apply
  Requires signature: true
  Optional: depositId, txId, subAccountId, subUserId
  """
  def one_click_arrival_deposit_apply_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/capital/deposit/credit-apply",
          query: [depositId: Keyword.get(opts, :depositId), txId: Keyword.get(opts, :txId), subAccountId: Keyword.get(opts, :subAccountId), subUserId: Keyword.get(opts, :subUserId), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec deposit_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Deposit History
  Variant: User Data
  Tags: supporting_network, user_data
  Method: GET
  Path: /sapi/v1/capital/deposit/hisrec
  Requires signature: true
  Optional: includeSource, coin, status, startTime, endTime, offset, limit, recvWindow, txId
  """
  def deposit_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/deposit/hisrec",
          query: [includeSource: Keyword.get(opts, :includeSource), coin: Keyword.get(opts, :coin), status: Keyword.get(opts, :status), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), offset: Keyword.get(opts, :offset), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), txId: Keyword.get(opts, :txId), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec fetch_withdraw_address_list_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Fetch withdraw address list
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/capital/withdraw/address/list
  Requires signature: true
  """
  def fetch_withdraw_address_list_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/withdraw/address/list",
          query: [timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec withdraw_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Withdraw
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/capital/withdraw/apply
  Requires signature: true
  Required: coin, address, amount
  Optional: withdrawOrderId, network, addressTag, transactionFeeFlag, name, walletType, recvWindow
  """
  def withdraw_v1(client, coin, address, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/capital/withdraw/apply",
          query: [coin: coin, withdrawOrderId: Keyword.get(opts, :withdrawOrderId), network: Keyword.get(opts, :network), address: address, addressTag: Keyword.get(opts, :addressTag), amount: amount, transactionFeeFlag: Keyword.get(opts, :transactionFeeFlag), name: Keyword.get(opts, :name), walletType: Keyword.get(opts, :walletType), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec withdraw_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Withdraw History
  Variant: User Data
  Tags: supporting_network, user_data
  Method: GET
  Path: /sapi/v1/capital/withdraw/history
  Requires signature: true
  Optional: coin, withdrawOrderId, status, offset, limit, idList, startTime, endTime, recvWindow
  """
  def withdraw_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/withdraw/history",
          query: [coin: Keyword.get(opts, :coin), withdrawOrderId: Keyword.get(opts, :withdrawOrderId), status: Keyword.get(opts, :status), offset: Keyword.get(opts, :offset), limit: Keyword.get(opts, :limit), idList: Keyword.get(opts, :idList), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec fetch_withdraw_quota_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Fetch withdraw quota
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/capital/withdraw/quota
  Requires signature: true
  """
  def fetch_withdraw_quota_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/withdraw/quota",
          query: [timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end