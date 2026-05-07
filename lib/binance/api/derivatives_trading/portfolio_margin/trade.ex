defmodule Binance.API.DerivativesTrading.PortfolioMargin.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://papi.binance.com", testnet_url: "https://testnet.binancefuture.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  CM Position ADL Quantile Estimation
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/adlQuantile
  Requires signature: true
  """
  def cm_position_adl_quantile_estimation_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/adlQuantile",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel All CM Open Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/cm/allOpenOrders
  Requires signature: true
  """
  def cancel_all_cm_open_orders_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/cm/allOpenOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query All CM Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/allOrders
  Requires signature: true
  """
  def query_all_cm_orders_v1(client, symbol, pair: pair, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/allOrders",
          query: [symbol: symbol, pair: pair, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel All CM Open Conditional Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/cm/conditional/allOpenOrders
  Requires signature: true
  """
  def cancel_all_cm_open_conditional_orders_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/allOpenOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query All CM Conditional Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/conditional/allOrders
  Requires signature: true
  """
  def query_all_cm_conditional_orders_v1(client, symbol: symbol, strategyId: strategyId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/allOrders",
          query: [symbol: symbol, strategyId: strategyId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Current CM Open Conditional Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/conditional/openOrder
  Requires signature: true
  """
  def query_current_cm_open_conditional_order_v1(client, symbol, strategyId: strategyId, newClientStrategyId: newClientStrategyId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/openOrder",
          query: [symbol: symbol, strategyId: strategyId, newClientStrategyId: newClientStrategyId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query All Current CM Open Conditional Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/conditional/openOrders
  Requires signature: true
  """
  def query_all_current_cm_open_conditional_orders_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/openOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel CM Conditional Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/cm/conditional/order
  Requires signature: true
  """
  def cancel_cm_conditional_order_v1(client, symbol, strategyId: strategyId, newClientStrategyId: newClientStrategyId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/order",
          query: [symbol: symbol, strategyId: strategyId, newClientStrategyId: newClientStrategyId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New CM Conditional Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/cm/conditional/order
  Requires signature: true
  """
  def new_cm_conditional_order_v1(client, symbol, side, strategyType, positionSide: positionSide, timeInForce: timeInForce, quantity: quantity, reduceOnly: reduceOnly, price: price, workingType: workingType, priceProtect: priceProtect, newClientStrategyId: newClientStrategyId, stopPrice: stopPrice, activationPrice: activationPrice, callbackRate: callbackRate, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/order",
          query: [symbol: symbol, side: side, positionSide: positionSide, strategyType: strategyType, timeInForce: timeInForce, quantity: quantity, reduceOnly: reduceOnly, price: price, workingType: workingType, priceProtect: priceProtect, newClientStrategyId: newClientStrategyId, stopPrice: stopPrice, activationPrice: activationPrice, callbackRate: callbackRate, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query CM Conditional Order History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/conditional/orderHistory
  Requires signature: true
  """
  def query_cm_conditional_order_history_v1(client, symbol, strategyId: strategyId, newClientStrategyId: newClientStrategyId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/orderHistory",
          query: [symbol: symbol, strategyId: strategyId, newClientStrategyId: newClientStrategyId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query User's CM Force Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/forceOrders
  Requires signature: true
  """
  def query_user_s_cm_force_orders_v1(client, symbol: symbol, autoCloseType: autoCloseType, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/forceOrders",
          query: [symbol: symbol, autoCloseType: autoCloseType, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Current CM Open Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/openOrder
  Requires signature: true
  """
  def query_current_cm_open_order_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/openOrder",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query All Current CM Open Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/openOrders
  Requires signature: true
  """
  def query_all_current_cm_open_orders_v1(client, symbol: symbol, pair: pair, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/openOrders",
          query: [symbol: symbol, pair: pair, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel CM Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/cm/order
  Requires signature: true
  """
  def cancel_cm_order_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/cm/order",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Modify CM Order
  Variant: Trade
  Tags: trade
  Method: PUT
  Path: /papi/v1/cm/order
  Requires signature: true
  """
  def modify_cm_order_v1(client, symbol, side, quantity, price, orderId: orderId, origClientOrderId: origClientOrderId, priceMatch: priceMatch, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/papi/v1/cm/order",
          query: [orderId: orderId, origClientOrderId: origClientOrderId, symbol: symbol, side: side, quantity: quantity, price: price, priceMatch: priceMatch, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New CM Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/cm/order
  Requires signature: true
  """
  def new_cm_order_v1(client, symbol, side, type, positionSide: positionSide, timeInForce: timeInForce, quantity: quantity, reduceOnly: reduceOnly, price: price, priceMatch: priceMatch, newClientOrderId: newClientOrderId, newOrderRespType: newOrderRespType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/cm/order",
          query: [symbol: symbol, side: side, positionSide: positionSide, type: type, timeInForce: timeInForce, quantity: quantity, reduceOnly: reduceOnly, price: price, priceMatch: priceMatch, newClientOrderId: newClientOrderId, newOrderRespType: newOrderRespType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query CM Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/order
  Requires signature: true
  """
  def query_cm_order_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/order",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query CM Modify Order History
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /papi/v1/cm/orderAmendment
  Requires signature: true
  """
  def query_cm_modify_order_history_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/orderAmendment",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  CM Account Trade List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/userTrades
  Requires signature: true
  """
  def cm_account_trade_list_v1(client, symbol: symbol, pair: pair, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/userTrades",
          query: [symbol: symbol, pair: pair, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel Margin Account All Open Orders on a Symbol
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/margin/allOpenOrders
  Requires signature: true
  """
  def cancel_margin_account_all_open_orders_on_a_symbol_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/margin/allOpenOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin Account's all OCO
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/allOrderList
  Requires signature: true
  """
  def query_margin_account_s_all_oco_v1(client, fromId: fromId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/allOrderList",
          query: [fromId: fromId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query All Margin Account Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/allOrders
  Requires signature: true
  """
  def query_all_margin_account_orders_v1(client, symbol, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/allOrders",
          query: [symbol: symbol, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query User's Margin Force Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/forceOrders
  Requires signature: true
  """
  def query_user_s_margin_force_orders_v1(client, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/forceOrders",
          query: [startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Account Trade List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/myTrades
  Requires signature: true
  """
  def margin_account_trade_list_v1(client, symbol, orderId: orderId, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/myTrades",
          query: [symbol: symbol, orderId: orderId, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin Account's Open OCO
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/openOrderList
  Requires signature: true
  """
  def query_margin_account_s_open_oco_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/openOrderList",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Current Margin Open Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/openOrders
  Requires signature: true
  """
  def query_current_margin_open_order_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/openOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel Margin Account Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/margin/order
  Requires signature: true
  """
  def cancel_margin_account_order_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, newClientOrderId: newClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/margin/order",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, newClientOrderId: newClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New Margin Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/margin/order
  Requires signature: true
  """
  def new_margin_order_v1(client, symbol, side, type, quantity: quantity, quoteOrderQty: quoteOrderQty, price: price, stopPrice: stopPrice, newClientOrderId: newClientOrderId, newOrderRespType: newOrderRespType, icebergQty: icebergQty, sideEffectType: sideEffectType, timeInForce: timeInForce, selfTradePreventionMode: selfTradePreventionMode, autoRepayAtCancel: autoRepayAtCancel, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/margin/order",
          query: [symbol: symbol, side: side, type: type, quantity: quantity, quoteOrderQty: quoteOrderQty, price: price, stopPrice: stopPrice, newClientOrderId: newClientOrderId, newOrderRespType: newOrderRespType, icebergQty: icebergQty, sideEffectType: sideEffectType, timeInForce: timeInForce, selfTradePreventionMode: selfTradePreventionMode, autoRepayAtCancel: autoRepayAtCancel, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin Account Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/order
  Requires signature: true
  """
  def query_margin_account_order_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/order",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Account New OCO
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/margin/order/oco
  Requires signature: true
  """
  def margin_account_new_oco_v1(client, symbol, side, quantity, price, stopPrice, listClientOrderId: listClientOrderId, limitClientOrderId: limitClientOrderId, limitIcebergQty: limitIcebergQty, stopClientOrderId: stopClientOrderId, stopLimitPrice: stopLimitPrice, stopIcebergQty: stopIcebergQty, stopLimitTimeInForce: stopLimitTimeInForce, newOrderRespType: newOrderRespType, sideEffectType: sideEffectType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/margin/order/oco",
          query: [symbol: symbol, listClientOrderId: listClientOrderId, side: side, quantity: quantity, limitClientOrderId: limitClientOrderId, price: price, limitIcebergQty: limitIcebergQty, stopClientOrderId: stopClientOrderId, stopPrice: stopPrice, stopLimitPrice: stopLimitPrice, stopIcebergQty: stopIcebergQty, stopLimitTimeInForce: stopLimitTimeInForce, newOrderRespType: newOrderRespType, sideEffectType: sideEffectType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel Margin Account OCO Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/margin/orderList
  Requires signature: true
  """
  def cancel_margin_account_oco_orders_v1(client, symbol, orderListId: orderListId, listClientOrderId: listClientOrderId, newClientOrderId: newClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/margin/orderList",
          query: [symbol: symbol, orderListId: orderListId, listClientOrderId: listClientOrderId, newClientOrderId: newClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin Account's OCO
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/orderList
  Requires signature: true
  """
  def query_margin_account_s_oco_v1(client, orderListId: orderListId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/orderList",
          query: [orderListId: orderListId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Account Repay Debt
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/margin/repay-debt
  Requires signature: true
  """
  def margin_account_repay_debt_v1(client, asset, amount: amount, specifyRepayAssets: specifyRepayAssets, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/margin/repay-debt",
          query: [asset: asset, amount: amount, specifyRepayAssets: specifyRepayAssets, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Account Borrow
  Variant: Margin
  Tags: margin
  Method: POST
  Path: /papi/v1/marginLoan
  Requires signature: true
  """
  def margin_account_borrow_v1(client, asset, amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/marginLoan",
          query: [asset: asset, amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Account Repay
  Variant: Margin
  Tags: margin
  Method: POST
  Path: /papi/v1/repayLoan
  Requires signature: true
  """
  def margin_account_repay_v1(client, asset, amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/repayLoan",
          query: [asset: asset, amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  UM Position ADL Quantile Estimation
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/adlQuantile
  Requires signature: true
  """
  def um_position_adl_quantile_estimation_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/adlQuantile",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Current UM Open Algo Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/algo/algoOrder
  Requires signature: true
  """
  def query_current_um_open_algo_order_v1(client, algoId: algoId, clientAlgoId: clientAlgoId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/algo/algoOrder",
          query: [algoId: algoId, clientAlgoId: clientAlgoId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query UM Algo Order History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/algo/allAlgoOrders
  Requires signature: true
  """
  def query_um_algo_order_history_v1(client, symbol, algoId: algoId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/algo/allAlgoOrders",
          query: [symbol: symbol, algoId: algoId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel All UM Algo Open Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/um/algo/allOpenOrders
  Requires signature: true
  """
  def cancel_all_um_algo_open_orders_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/um/algo/allOpenOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query All Current UM Open Algo Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/algo/openAlgoOrders
  Requires signature: true
  """
  def query_all_current_um_open_algo_orders_v1(client, algoType: algoType, symbol: symbol, algoId: algoId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/algo/openAlgoOrders",
          query: [algoType: algoType, symbol: symbol, algoId: algoId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel UM Algo Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/um/algo/order
  Requires signature: true
  """
  def cancel_um_algo_order_v1(client, algoId: algoId, clientAlgoId: clientAlgoId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/um/algo/order",
          query: [algoId: algoId, clientAlgoId: clientAlgoId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New UM Algo Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/um/algo/order
  Requires signature: true
  """
  def new_um_algo_order_v1(client, algoType, symbol, side, type, quantity, positionSide: positionSide, timeInForce: timeInForce, price: price, triggerPrice: triggerPrice, workingType: workingType, priceMatch: priceMatch, priceProtect: priceProtect, reduceOnly: reduceOnly, activatePrice: activatePrice, callbackRate: callbackRate, clientAlgoId: clientAlgoId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, goodTillDate: goodTillDate, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/algo/order",
          query: [algoType: algoType, symbol: symbol, side: side, positionSide: positionSide, type: type, timeInForce: timeInForce, quantity: quantity, price: price, triggerPrice: triggerPrice, workingType: workingType, priceMatch: priceMatch, priceProtect: priceProtect, reduceOnly: reduceOnly, activatePrice: activatePrice, callbackRate: callbackRate, clientAlgoId: clientAlgoId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, goodTillDate: goodTillDate, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel All UM Open Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/um/allOpenOrders
  Requires signature: true
  """
  def cancel_all_um_open_orders_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/um/allOpenOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query All UM Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/allOrders
  Requires signature: true
  """
  def query_all_um_orders_v1(client, symbol, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/allOrders",
          query: [symbol: symbol, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel All UM Open Conditional Orders
  Method: DELETE
  Path: /papi/v1/um/conditional/allOpenOrders
  Requires signature: true
  """
  def cancel_all_um_open_conditional_orders_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/um/conditional/allOpenOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query All UM Conditional Orders
  Method: GET
  Path: /papi/v1/um/conditional/allOrders
  Requires signature: true
  """
  def query_all_um_conditional_orders_v1(client, symbol: symbol, strategyId: strategyId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/conditional/allOrders",
          query: [symbol: symbol, strategyId: strategyId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Current UM Open Conditional Order
  Method: GET
  Path: /papi/v1/um/conditional/openOrder
  Requires signature: true
  """
  def query_current_um_open_conditional_order_v1(client, symbol, strategyId: strategyId, newClientStrategyId: newClientStrategyId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/conditional/openOrder",
          query: [symbol: symbol, strategyId: strategyId, newClientStrategyId: newClientStrategyId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query All Current UM Open Conditional Orders
  Method: GET
  Path: /papi/v1/um/conditional/openOrders
  Requires signature: true
  """
  def query_all_current_um_open_conditional_orders_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/conditional/openOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel UM Conditional Order
  Method: DELETE
  Path: /papi/v1/um/conditional/order
  Requires signature: true
  """
  def cancel_um_conditional_order_v1(client, symbol, strategyId: strategyId, newClientStrategyId: newClientStrategyId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/um/conditional/order",
          query: [symbol: symbol, strategyId: strategyId, newClientStrategyId: newClientStrategyId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New UM Conditional Order
  Method: POST
  Path: /papi/v1/um/conditional/order
  Requires signature: true
  """
  def new_um_conditional_order_v1(client, symbol, side, strategyType, positionSide: positionSide, timeInForce: timeInForce, quantity: quantity, reduceOnly: reduceOnly, price: price, workingType: workingType, priceProtect: priceProtect, newClientStrategyId: newClientStrategyId, stopPrice: stopPrice, activationPrice: activationPrice, callbackRate: callbackRate, priceMatch: priceMatch, selfTradePreventionMode: selfTradePreventionMode, goodTillDate: goodTillDate, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/conditional/order",
          query: [symbol: symbol, side: side, positionSide: positionSide, strategyType: strategyType, timeInForce: timeInForce, quantity: quantity, reduceOnly: reduceOnly, price: price, workingType: workingType, priceProtect: priceProtect, newClientStrategyId: newClientStrategyId, stopPrice: stopPrice, activationPrice: activationPrice, callbackRate: callbackRate, priceMatch: priceMatch, selfTradePreventionMode: selfTradePreventionMode, goodTillDate: goodTillDate, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query UM Conditional Order History
  Method: GET
  Path: /papi/v1/um/conditional/orderHistory
  Requires signature: true
  """
  def query_um_conditional_order_history_v1(client, symbol, strategyId: strategyId, newClientStrategyId: newClientStrategyId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/conditional/orderHistory",
          query: [symbol: symbol, strategyId: strategyId, newClientStrategyId: newClientStrategyId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get UM Futures BNB Burn Status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/feeBurn
  Requires signature: true
  """
  def get_um_futures_bnb_burn_status_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/feeBurn",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Toggle BNB Burn On UM Futures Trade
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/um/feeBurn
  Requires signature: true
  """
  def toggle_bnb_burn_on_um_futures_trade_v1(client, feeBurn, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/feeBurn",
          query: [feeBurn: feeBurn, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query User's UM Force Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/forceOrders
  Requires signature: true
  """
  def query_user_s_um_force_orders_v1(client, symbol: symbol, autoCloseType: autoCloseType, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/forceOrders",
          query: [symbol: symbol, autoCloseType: autoCloseType, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Current UM Open Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/openOrder
  Requires signature: true
  """
  def query_current_um_open_order_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/openOrder",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query All Current UM Open Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/openOrders
  Requires signature: true
  """
  def query_all_current_um_open_orders_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/openOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel UM Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/um/order
  Requires signature: true
  """
  def cancel_um_order_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/um/order",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Modify UM Order
  Variant: Trade
  Tags: trade
  Method: PUT
  Path: /papi/v1/um/order
  Requires signature: true
  """
  def modify_um_order_v1(client, symbol, side, quantity, price, orderId: orderId, origClientOrderId: origClientOrderId, priceMatch: priceMatch, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/papi/v1/um/order",
          query: [orderId: orderId, origClientOrderId: origClientOrderId, symbol: symbol, side: side, quantity: quantity, price: price, priceMatch: priceMatch, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New UM Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/um/order
  Requires signature: true
  """
  def new_um_order_v1(client, symbol, side, type, positionSide: positionSide, timeInForce: timeInForce, quantity: quantity, reduceOnly: reduceOnly, price: price, newClientOrderId: newClientOrderId, newOrderRespType: newOrderRespType, priceMatch: priceMatch, selfTradePreventionMode: selfTradePreventionMode, goodTillDate: goodTillDate, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/order",
          query: [symbol: symbol, side: side, positionSide: positionSide, type: type, timeInForce: timeInForce, quantity: quantity, reduceOnly: reduceOnly, price: price, newClientOrderId: newClientOrderId, newOrderRespType: newOrderRespType, priceMatch: priceMatch, selfTradePreventionMode: selfTradePreventionMode, goodTillDate: goodTillDate, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query UM Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/order
  Requires signature: true
  """
  def query_um_order_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/order",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query UM Modify Order History
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /papi/v1/um/orderAmendment
  Requires signature: true
  """
  def query_um_modify_order_history_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/orderAmendment",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Futures TradFi Perps Contract
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /papi/v1/um/stock/contract
  Requires signature: true
  """
  def futures_tradfi_perps_contract_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/stock/contract",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  UM Account Trade List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/userTrades
  Requires signature: true
  """
  def um_account_trade_list_v1(client, symbol, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/userTrades",
          query: [symbol: symbol, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end