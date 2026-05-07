defmodule Binance.API.Mining do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec hashrate_resale_request_v1(Binance.Client.t(), term(), term(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Hashrate Resale Request
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/mining/hash-transfer/config
  Requires signature: true
  Required: userName, algo, endDate, startDate, toPoolUser, hashRate
  Optional: recvWindow
  """
  def hashrate_resale_request_v1(client, userName, algo, endDate, startDate, toPoolUser, hashRate, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/mining/hash-transfer/config",
          query: [userName: userName, algo: algo, endDate: endDate, startDate: startDate, toPoolUser: toPoolUser, hashRate: hashRate, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec cancel_hashrate_resale_configuration_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel hashrate resale configuration
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/mining/hash-transfer/config/cancel
  Requires signature: true
  Required: configId, userName
  Optional: recvWindow
  """
  def cancel_hashrate_resale_configuration_v1(client, configId, userName, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/mining/hash-transfer/config/cancel",
          query: [configId: configId, userName: userName, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec hashrate_resale_list_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Hashrate Resale List
  Method: GET
  Path: /sapi/v1/mining/hash-transfer/config/details/list
  Requires signature: true
  Optional: pageIndex, pageSize, recvWindow
  """
  def hashrate_resale_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/hash-transfer/config/details/list",
          query: [pageIndex: Keyword.get(opts, :pageIndex), pageSize: Keyword.get(opts, :pageSize), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec hashrate_resale_detail_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Hashrate Resale Detail
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/hash-transfer/profit/details
  Requires signature: true
  Required: configId
  Optional: pageIndex, pageSize, recvWindow
  """
  def hashrate_resale_detail_v1(client, configId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/hash-transfer/profit/details",
          query: [configId: configId, pageIndex: Keyword.get(opts, :pageIndex), pageSize: Keyword.get(opts, :pageSize), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec earnings_list_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Earnings List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/payment/list
  Requires signature: true
  Required: algo, userName
  Optional: coin, startDate, endDate, pageIndex, pageSize, recvWindow
  """
  def earnings_list_v1(client, algo, userName, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/payment/list",
          query: [algo: algo, userName: userName, coin: Keyword.get(opts, :coin), startDate: Keyword.get(opts, :startDate), endDate: Keyword.get(opts, :endDate), pageIndex: Keyword.get(opts, :pageIndex), pageSize: Keyword.get(opts, :pageSize), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec extra_bonus_list_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Extra Bonus List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/payment/other
  Requires signature: true
  Required: algo, userName
  Optional: coin, startDate, endDate, pageIndex, pageSize, recvWindow
  """
  def extra_bonus_list_v1(client, algo, userName, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/payment/other",
          query: [algo: algo, userName: userName, coin: Keyword.get(opts, :coin), startDate: Keyword.get(opts, :startDate), endDate: Keyword.get(opts, :endDate), pageIndex: Keyword.get(opts, :pageIndex), pageSize: Keyword.get(opts, :pageSize), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec mining_account_earning_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Mining Account Earning
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/payment/uid
  Requires signature: true
  Required: algo
  Optional: startDate, endDate, pageIndex, pageSize, recvWindow
  """
  def mining_account_earning_v1(client, algo, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/payment/uid",
          query: [algo: algo, startDate: Keyword.get(opts, :startDate), endDate: Keyword.get(opts, :endDate), pageIndex: Keyword.get(opts, :pageIndex), pageSize: Keyword.get(opts, :pageSize), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec acquiring_algorithm_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
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
  
  @spec acquiring_coinname_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
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
  
  @spec account_list_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Account List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/statistics/user/list
  Requires signature: true
  Required: algo, userName
  Optional: recvWindow
  """
  def account_list_v1(client, algo, userName, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/statistics/user/list",
          query: [algo: algo, userName: userName, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec statistic_list_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Statistic List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/statistics/user/status
  Requires signature: true
  Required: algo, userName
  Optional: recvWindow
  """
  def statistic_list_v1(client, algo, userName, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/statistics/user/status",
          query: [algo: algo, userName: userName, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec request_for_detail_miner_list_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Request for Detail Miner List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/worker/detail
  Requires signature: true
  Required: algo, userName, workerName
  Optional: recvWindow
  """
  def request_for_detail_miner_list_v1(client, algo, userName, workerName, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/worker/detail",
          query: [algo: algo, userName: userName, workerName: workerName, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec request_for_miner_list_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Request for Miner List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/mining/worker/list
  Requires signature: true
  Required: algo, userName
  Optional: pageIndex, sort, sortColumn, workerStatus, recvWindow
  """
  def request_for_miner_list_v1(client, algo, userName, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/mining/worker/list",
          query: [algo: algo, userName: userName, pageIndex: Keyword.get(opts, :pageIndex), sort: Keyword.get(opts, :sort), sortColumn: Keyword.get(opts, :sortColumn), workerStatus: Keyword.get(opts, :workerStatus), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end