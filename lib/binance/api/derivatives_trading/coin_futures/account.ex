defmodule Binance.API.DerivativesTrading.CoinFutures.Account do
  @moduledoc false

  @base_urls %{prod_url: "https://dapi.binance.com", testnet_url: "https://testnet.binancefuture.com"}

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
  Path: /dapi/v1/account
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
          url: "/dapi/v1/account",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Futures Account Balance
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/balance
  Requires signature: true
  """
  def futures_account_balance_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/balance",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  User Commission Rate
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/commissionRate
  Requires signature: true
  """
  def user_commission_rate_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/commissionRate",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Income History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/income
  Requires signature: true
  """
  def get_income_history_v1(client, symbol: symbol, incomeType: incomeType, startTime: startTime, endTime: endTime, page: page, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/income",
          query: [symbol: symbol, incomeType: incomeType, startTime: startTime, endTime: endTime, page: page, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Download Id For Futures Transaction History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/income/asyn
  Requires signature: true
  """
  def get_download_id_for_futures_transaction_history_v1(client, startTime, endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/income/asyn",
          query: [startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Futures Transaction History Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/income/asyn/id
  Requires signature: true
  """
  def get_futures_transaction_history_download_link_by_id_v1(client, downloadId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/income/asyn/id",
          query: [downloadId: downloadId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Notional Bracket for Pair
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/leverageBracket
  Requires signature: true
  """
  def notional_bracket_for_pair_v1(client, pair: pair, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/leverageBracket",
          query: [pair: pair, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Download Id For Futures Order History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/order/asyn
  Requires signature: true
  """
  def get_download_id_for_futures_order_history_v1(client, startTime, endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/order/asyn",
          query: [startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Futures Order History Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/order/asyn/id
  Requires signature: true
  """
  def get_futures_order_history_download_link_by_id_v1(client, downloadId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/order/asyn/id",
          query: [downloadId: downloadId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Current Position Mode
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/positionSide/dual
  Requires signature: true
  """
  def get_current_position_mode_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/positionSide/dual",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Download Id For Futures Trade History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/trade/asyn
  Requires signature: true
  """
  def get_download_id_for_futures_trade_history_v1(client, startTime, endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/trade/asyn",
          query: [startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Futures Trade Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/trade/asyn/id
  Requires signature: true
  """
  def get_futures_trade_download_link_by_id_v1(client, downloadId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/trade/asyn/id",
          query: [downloadId: downloadId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Notional Bracket for Symbol
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v2/leverageBracket
  Requires signature: true
  """
  def notional_bracket_for_symbol_v2(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v2/leverageBracket",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end