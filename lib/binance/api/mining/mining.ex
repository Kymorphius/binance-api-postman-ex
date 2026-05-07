defmodule Binance.API.Mining.Mining do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Hashrate Resale Request
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/mining/hash-transfer/config
  Requires signature: true
  """
  def hashrate_resale_request_v1(client, userName, algo, endDate, startDate, toPoolUser, hashRate, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/mining/hash-transfer/config",
          query: [userName: userName, algo: algo, endDate: endDate, startDate: startDate, toPoolUser: toPoolUser, hashRate: hashRate, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel hashrate resale configuration
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/mining/hash-transfer/config/cancel
  Requires signature: true
  """
  def cancel_hashrate_resale_configuration_v1(client, configId, userName, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/mining/hash-transfer/config/cancel",
          query: [configId: configId, userName: userName, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Hashrate Resale List
  Method: GET
  Path: /sapi/v1/mining/hash-transfer/config/details/list
  Requires signature: true
  """
  def hashrate_resale_list_v1(client, pageIndex: pageIndex, pageSize: pageSize, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/hash-transfer/config/details/list",
          query: [pageIndex: pageIndex, pageSize: pageSize, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Hashrate Resale Detail
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/hash-transfer/profit/details
  Requires signature: true
  """
  def hashrate_resale_detail_v1(client, configId, pageIndex: pageIndex, pageSize: pageSize, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/hash-transfer/profit/details",
          query: [configId: configId, pageIndex: pageIndex, pageSize: pageSize, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Earnings List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/payment/list
  Requires signature: true
  """
  def earnings_list_v1(client, algo, userName, coin: coin, startDate: startDate, endDate: endDate, pageIndex: pageIndex, pageSize: pageSize, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/payment/list",
          query: [algo: algo, userName: userName, coin: coin, startDate: startDate, endDate: endDate, pageIndex: pageIndex, pageSize: pageSize, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Extra Bonus List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/payment/other
  Requires signature: true
  """
  def extra_bonus_list_v1(client, algo, userName, coin: coin, startDate: startDate, endDate: endDate, pageIndex: pageIndex, pageSize: pageSize, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/payment/other",
          query: [algo: algo, userName: userName, coin: coin, startDate: startDate, endDate: endDate, pageIndex: pageIndex, pageSize: pageSize, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Mining Account Earning
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/payment/uid
  Requires signature: true
  """
  def mining_account_earning_v1(client, algo, startDate: startDate, endDate: endDate, pageIndex: pageIndex, pageSize: pageSize, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/payment/uid",
          query: [algo: algo, startDate: startDate, endDate: endDate, pageIndex: pageIndex, pageSize: pageSize, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Acquiring Algorithm
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/mining/pub/algoList
  Requires signature: false
  """
  def acquiring_algorithm_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/pub/algoList",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Acquiring CoinName
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/mining/pub/coinList
  Requires signature: false
  """
  def acquiring_coinname_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/pub/coinList",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Account List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/statistics/user/list
  Requires signature: true
  """
  def account_list_v1(client, algo, userName, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/statistics/user/list",
          query: [algo: algo, userName: userName, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Statistic List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/statistics/user/status
  Requires signature: true
  """
  def statistic_list_v1(client, algo, userName, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/statistics/user/status",
          query: [algo: algo, userName: userName, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Request for Detail Miner List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/worker/detail
  Requires signature: true
  """
  def request_for_detail_miner_list_v1(client, algo, userName, workerName, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/worker/detail",
          query: [algo: algo, userName: userName, workerName: workerName, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Request for Miner List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/worker/list
  Requires signature: true
  """
  def request_for_miner_list_v1(client, algo, userName, pageIndex: pageIndex, sort: sort, sortColumn: sortColumn, workerStatus: workerStatus, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/worker/list",
          query: [algo: algo, userName: userName, pageIndex: pageIndex, sort: sort, sortColumn: sortColumn, workerStatus: workerStatus, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end