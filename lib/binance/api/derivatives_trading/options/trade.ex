defmodule Binance.API.DerivativesTrading.Options.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://eapi.binance.com", testnet_url: "https://testnet.binancefuture.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Cancel all Option orders on specific symbol
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /eapi/v1/allOpenOrders
  Requires signature: true
  """
  def cancel_all_option_orders_on_specific_symbol_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/eapi/v1/allOpenOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel All Option Orders By Underlying
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /eapi/v1/allOpenOrdersByUnderlying
  Requires signature: true
  """
  def cancel_all_option_orders_by_underlying_v1(client, underlying, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/eapi/v1/allOpenOrdersByUnderlying",
          query: [underlying: underlying, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel Multiple Option Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /eapi/v1/batchOrders
  Requires signature: true
  """
  def cancel_multiple_option_orders_v1(client, symbol, orderIds: orderIds, clientOrderIds: clientOrderIds, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/eapi/v1/batchOrders",
          query: [symbol: symbol, orderIds: orderIds, clientOrderIds: clientOrderIds, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Place Multiple Orders
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /eapi/v1/batchOrders
  Requires signature: true
  """
  def place_multiple_orders_v1(client, orders, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/batchOrders",
          query: [orders: orders, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  User Commission
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/commission
  Requires signature: true
  """
  def user_commission_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/commission",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  User Exercise Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/exerciseRecord
  Requires signature: true
  """
  def user_exercise_record_v1(client, symbol: symbol, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/exerciseRecord",
          query: [symbol: symbol, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Option Order History
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /eapi/v1/historyOrders
  Requires signature: true
  """
  def query_option_order_history_v1(client, symbol, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/historyOrders",
          query: [symbol: symbol, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Current Open Option Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/openOrders
  Requires signature: true
  """
  def query_current_open_option_orders_v1(client, symbol: symbol, orderId: orderId, startTime: startTime, endTime: endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/openOrders",
          query: [symbol: symbol, orderId: orderId, startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel Option Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /eapi/v1/order
  Requires signature: true
  """
  def cancel_option_order_v1(client, symbol, orderId: orderId, clientOrderId: clientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/eapi/v1/order",
          query: [symbol: symbol, orderId: orderId, clientOrderId: clientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /eapi/v1/order
  Requires signature: true
  """
  def new_order_v1(client, symbol, side, type, quantity, price: price, timeInForce: timeInForce, reduceOnly: reduceOnly, postOnly: postOnly, newOrderRespType: newOrderRespType, clientOrderId: clientOrderId, isMmp: isMmp, selfTradePreventionMode: selfTradePreventionMode, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/order",
          query: [symbol: symbol, side: side, type: type, quantity: quantity, price: price, timeInForce: timeInForce, reduceOnly: reduceOnly, postOnly: postOnly, newOrderRespType: newOrderRespType, clientOrderId: clientOrderId, isMmp: isMmp, selfTradePreventionMode: selfTradePreventionMode, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Single Order
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /eapi/v1/order
  Requires signature: true
  """
  def query_single_order_v1(client, symbol, orderId: orderId, clientOrderId: clientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/order",
          query: [symbol: symbol, orderId: orderId, clientOrderId: clientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Option Position Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/position
  Requires signature: true
  """
  def option_position_information_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/position",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Account Trade List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/userTrades
  Requires signature: true
  """
  def account_trade_list_v1(client, symbol: symbol, fromId: fromId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/userTrades",
          query: [symbol: symbol, fromId: fromId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end