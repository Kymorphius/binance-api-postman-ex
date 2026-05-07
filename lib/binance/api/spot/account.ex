defmodule Binance.API.Spot.Account do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com", testnet_url: "https://testnet.binance.vision", demo_url: "https://demo-api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Account information
  Method: GET
  Path: /api/v3/account
  Requires signature: true
  """
  def account_information_v3(client, omitZeroBalances: omitZeroBalances, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/account",
          query: [omitZeroBalances: omitZeroBalances, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Commission Rates
  Method: GET
  Path: /api/v3/account/commission
  Requires signature: true
  """
  def query_commission_rates_v3(client, symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/account/commission",
          query: [symbol: symbol, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query all Order lists
  Method: GET
  Path: /api/v3/allOrderList
  Requires signature: true
  """
  def query_all_order_lists_v3(client, fromId: fromId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/allOrderList",
          query: [fromId: fromId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  All orders
  Method: GET
  Path: /api/v3/allOrders
  Requires signature: true
  """
  def all_orders_v3(client, symbol, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/allOrders",
          query: [symbol: symbol, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Allocations
  Method: GET
  Path: /api/v3/myAllocations
  Requires signature: true
  """
  def query_allocations_v3(client, symbol, startTime: startTime, endTime: endTime, fromAllocationId: fromAllocationId, limit: limit, orderId: orderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/myAllocations",
          query: [symbol: symbol, startTime: startTime, endTime: endTime, fromAllocationId: fromAllocationId, limit: limit, orderId: orderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query relevant filters
  Method: GET
  Path: /api/v3/myFilters
  Requires signature: true
  """
  def query_relevant_filters_v3(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/myFilters",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Prevented Matches
  Method: GET
  Path: /api/v3/myPreventedMatches
  Requires signature: true
  """
  def query_prevented_matches_v3(client, symbol, preventedMatchId: preventedMatchId, orderId: orderId, fromPreventedMatchId: fromPreventedMatchId, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/myPreventedMatches",
          query: [symbol: symbol, preventedMatchId: preventedMatchId, orderId: orderId, fromPreventedMatchId: fromPreventedMatchId, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Account trade list
  Method: GET
  Path: /api/v3/myTrades
  Requires signature: true
  """
  def account_trade_list_v3(client, symbol, orderId: orderId, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/myTrades",
          query: [symbol: symbol, orderId: orderId, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Open Order lists
  Method: GET
  Path: /api/v3/openOrderList
  Requires signature: true
  """
  def query_open_order_lists_v3(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/openOrderList",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Current open orders
  Method: GET
  Path: /api/v3/openOrders
  Requires signature: true
  """
  def current_open_orders_v3(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/openOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query order
  Method: GET
  Path: /api/v3/order
  Requires signature: true
  """
  def query_order_v3(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/order",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Order Amendments
  Method: GET
  Path: /api/v3/order/amendments
  Requires signature: true
  """
  def query_order_amendments_v3(client, symbol, orderId, fromExecutionId: fromExecutionId, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/order/amendments",
          query: [symbol: symbol, orderId: orderId, fromExecutionId: fromExecutionId, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Order list
  Method: GET
  Path: /api/v3/orderList
  Requires signature: true
  """
  def query_order_list_v3(client, orderListId: orderListId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/orderList",
          query: [orderListId: orderListId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Unfilled Order Count
  Method: GET
  Path: /api/v3/rateLimit/order
  Requires signature: true
  """
  def query_unfilled_order_count_v3(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/rateLimit/order",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end