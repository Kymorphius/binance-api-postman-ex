defmodule Binance.API.Wallet.Capital do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  All Coins' Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/capital/config/getall
  Requires signature: true
  """
  def all_coins_information_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/config/getall",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Deposit Address
  Variant: User Data
  Tags: supporting_network, user_data
  Method: GET
  Path: /sapi/v1/capital/deposit/address
  Requires signature: true
  """
  def deposit_address_v1(client, coin, network: network, amount: amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/deposit/address",
          query: [coin: coin, network: network, amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Fetch deposit address list with network
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/capital/deposit/address/list
  Requires signature: true
  """
  def fetch_deposit_address_list_with_network_v1(client, coin, network: network) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/deposit/address/list",
          query: [coin: coin, network: network, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  One click arrival deposit apply
  Variant: User Data
  Tags: for_expired_address_deposit, user_data
  Method: POST
  Path: /sapi/v1/capital/deposit/credit-apply
  Requires signature: true
  """
  def one_click_arrival_deposit_apply_v1(client, depositId: depositId, txId: txId, subAccountId: subAccountId, subUserId: subUserId) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/capital/deposit/credit-apply",
          query: [depositId: depositId, txId: txId, subAccountId: subAccountId, subUserId: subUserId, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Deposit History
  Variant: User Data
  Tags: supporting_network, user_data
  Method: GET
  Path: /sapi/v1/capital/deposit/hisrec
  Requires signature: true
  """
  def deposit_history_v1(client, includeSource: includeSource, coin: coin, status: status, startTime: startTime, endTime: endTime, offset: offset, limit: limit, recvWindow: recvWindow, txId: txId) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/deposit/hisrec",
          query: [includeSource: includeSource, coin: coin, status: status, startTime: startTime, endTime: endTime, offset: offset, limit: limit, recvWindow: recvWindow, txId: txId, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
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
  
  @doc """
  Withdraw
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/capital/withdraw/apply
  Requires signature: true
  """
  def withdraw_v1(client, coin, address, amount, withdrawOrderId: withdrawOrderId, network: network, addressTag: addressTag, transactionFeeFlag: transactionFeeFlag, name: name, walletType: walletType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/capital/withdraw/apply",
          query: [coin: coin, withdrawOrderId: withdrawOrderId, network: network, address: address, addressTag: addressTag, amount: amount, transactionFeeFlag: transactionFeeFlag, name: name, walletType: walletType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Withdraw History
  Variant: User Data
  Tags: supporting_network, user_data
  Method: GET
  Path: /sapi/v1/capital/withdraw/history
  Requires signature: true
  """
  def withdraw_history_v1(client, coin: coin, withdrawOrderId: withdrawOrderId, status: status, offset: offset, limit: limit, idList: idList, startTime: startTime, endTime: endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/withdraw/history",
          query: [coin: coin, withdrawOrderId: withdrawOrderId, status: status, offset: offset, limit: limit, idList: idList, startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
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