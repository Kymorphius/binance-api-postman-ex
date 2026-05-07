defmodule Binance.API.DerivativesTrading.UsdsFutures.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://fapi.binance.com", testnet_url: "https://testnet.binancefuture.com", demo_url: "https://demo-fapi.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Position ADL Quantile Estimation
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/adlQuantile
  Requires signature: true
  """
  def position_adl_quantile_estimation_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/adlQuantile",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel All Algo Open Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /fapi/v1/algoOpenOrders
  Requires signature: true
  """
  def cancel_all_algo_open_orders_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/fapi/v1/algoOpenOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel Algo Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /fapi/v1/algoOrder
  Requires signature: true
  """
  def cancel_algo_order_v1(client, algoId: algoId, clientAlgoId: clientAlgoId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/fapi/v1/algoOrder",
          query: [algoId: algoId, clientAlgoId: clientAlgoId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New Algo Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/algoOrder
  Requires signature: true
  """
  def new_algo_order_v1(client, algoType, symbol, side, type, positionSide: positionSide, timeInForce: timeInForce, quantity: quantity, price: price, triggerPrice: triggerPrice, workingType: workingType, priceMatch: priceMatch, closePosition: closePosition, priceProtect: priceProtect, reduceOnly: reduceOnly, activatePrice: activatePrice, callbackRate: callbackRate, clientAlgoId: clientAlgoId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, goodTillDate: goodTillDate, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/algoOrder",
          query: [algoType: algoType, symbol: symbol, side: side, positionSide: positionSide, type: type, timeInForce: timeInForce, quantity: quantity, price: price, triggerPrice: triggerPrice, workingType: workingType, priceMatch: priceMatch, closePosition: closePosition, priceProtect: priceProtect, reduceOnly: reduceOnly, activatePrice: activatePrice, callbackRate: callbackRate, clientAlgoId: clientAlgoId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, goodTillDate: goodTillDate, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Algo Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/algoOrder
  Requires signature: true
  """
  def query_algo_order_v1(client, algoId: algoId, clientAlgoId: clientAlgoId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/algoOrder",
          query: [algoId: algoId, clientAlgoId: clientAlgoId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query All Algo Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/allAlgoOrders
  Requires signature: true
  """
  def query_all_algo_orders_v1(client, symbol, algoId: algoId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/allAlgoOrders",
          query: [symbol: symbol, algoId: algoId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel All Open Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /fapi/v1/allOpenOrders
  Requires signature: true
  """
  def cancel_all_open_orders_v1(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/fapi/v1/allOpenOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  All Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/allOrders
  Requires signature: true
  """
  def all_orders_v1(client, symbol, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/allOrders",
          query: [symbol: symbol, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel Multiple Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /fapi/v1/batchOrders
  Requires signature: true
  """
  def cancel_multiple_orders_v1(client, symbol, orderIdList: orderIdList, origClientOrderIdList: origClientOrderIdList, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/fapi/v1/batchOrders",
          query: [symbol: symbol, orderIdList: orderIdList, origClientOrderIdList: origClientOrderIdList, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Modify Multiple Orders
  Variant: Trade
  Tags: trade
  Method: PUT
  Path: /fapi/v1/batchOrders
  Requires signature: true
  """
  def modify_multiple_orders_v1(client, batchOrders, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/fapi/v1/batchOrders",
          query: [batchOrders: batchOrders, recvWindow: recvWindow, timestamp: nil],
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
  Path: /fapi/v1/batchOrders
  Requires signature: true
  """
  def place_multiple_orders_v1(client, batchOrders, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/batchOrders",
          query: [batchOrders: batchOrders, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Auto-Cancel All Open Orders
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/countdownCancelAll
  Requires signature: true
  """
  def auto_cancel_all_open_orders_v1(client, symbol, countdownTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/countdownCancelAll",
          query: [symbol: symbol, countdownTime: countdownTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  User's Force Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/forceOrders
  Requires signature: true
  """
  def user_s_force_orders_v1(client, symbol: symbol, autoCloseType: autoCloseType, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/forceOrders",
          query: [symbol: symbol, autoCloseType: autoCloseType, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Change Initial Leverage
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/leverage
  Requires signature: true
  """
  def change_initial_leverage_v1(client, symbol, leverage, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/leverage",
          query: [symbol: symbol, leverage: leverage, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Change Margin Type
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/marginType
  Requires signature: true
  """
  def change_margin_type_v1(client, symbol, marginType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/marginType",
          query: [symbol: symbol, marginType: marginType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Change Multi-Assets Mode
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/multiAssetsMargin
  Requires signature: true
  """
  def change_multi_assets_mode_v1(client, multiAssetsMargin, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/multiAssetsMargin",
          query: [multiAssetsMargin: multiAssetsMargin, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Current All Algo Open Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/openAlgoOrders
  Requires signature: true
  """
  def current_all_algo_open_orders_v1(client, algoType: algoType, symbol: symbol, algoId: algoId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/openAlgoOrders",
          query: [algoType: algoType, symbol: symbol, algoId: algoId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Current Open Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/openOrder
  Requires signature: true
  """
  def query_current_open_order_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/openOrder",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Current All Open Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/openOrders
  Requires signature: true
  """
  def current_all_open_orders_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/openOrders",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /fapi/v1/order
  Requires signature: true
  """
  def cancel_order_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/fapi/v1/order",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Modify Order
  Variant: Trade
  Tags: trade
  Method: PUT
  Path: /fapi/v1/order
  Requires signature: true
  """
  def modify_order_v1(client, symbol, side, quantity, price, orderId: orderId, origClientOrderId: origClientOrderId, priceMatch: priceMatch, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/fapi/v1/order",
          query: [orderId: orderId, origClientOrderId: origClientOrderId, symbol: symbol, side: side, quantity: quantity, price: price, priceMatch: priceMatch, recvWindow: recvWindow, timestamp: nil],
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
  Path: /fapi/v1/order
  Requires signature: true
  """
  def new_order_v1(client, symbol, side, type, positionSide: positionSide, timeInForce: timeInForce, quantity: quantity, reduceOnly: reduceOnly, price: price, newClientOrderId: newClientOrderId, newOrderRespType: newOrderRespType, priceMatch: priceMatch, selfTradePreventionMode: selfTradePreventionMode, goodTillDate: goodTillDate, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/order",
          query: [symbol: symbol, side: side, positionSide: positionSide, type: type, timeInForce: timeInForce, quantity: quantity, reduceOnly: reduceOnly, price: price, newClientOrderId: newClientOrderId, newOrderRespType: newOrderRespType, priceMatch: priceMatch, selfTradePreventionMode: selfTradePreventionMode, goodTillDate: goodTillDate, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/order
  Requires signature: true
  """
  def query_order_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/order",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Test Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/order/test
  Requires signature: true
  """
  def test_order_v1(client, symbol, side, type, positionSide: positionSide, timeInForce: timeInForce, quantity: quantity, reduceOnly: reduceOnly, price: price, newClientOrderId: newClientOrderId, stopPrice: stopPrice, closePosition: closePosition, activationPrice: activationPrice, callbackRate: callbackRate, workingType: workingType, priceProtect: priceProtect, newOrderRespType: newOrderRespType, priceMatch: priceMatch, selfTradePreventionMode: selfTradePreventionMode, goodTillDate: goodTillDate, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/order/test",
          query: [symbol: symbol, side: side, positionSide: positionSide, type: type, timeInForce: timeInForce, quantity: quantity, reduceOnly: reduceOnly, price: price, newClientOrderId: newClientOrderId, stopPrice: stopPrice, closePosition: closePosition, activationPrice: activationPrice, callbackRate: callbackRate, workingType: workingType, priceProtect: priceProtect, newOrderRespType: newOrderRespType, priceMatch: priceMatch, selfTradePreventionMode: selfTradePreventionMode, goodTillDate: goodTillDate, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Order Modify History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/orderAmendment
  Requires signature: true
  """
  def get_order_modify_history_v1(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/orderAmendment",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Modify Isolated Position Margin
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/positionMargin
  Requires signature: true
  """
  def modify_isolated_position_margin_v1(client, symbol, amount, type, positionSide: positionSide, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/positionMargin",
          query: [symbol: symbol, positionSide: positionSide, amount: amount, type: type, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Position Margin Change History
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /fapi/v1/positionMargin/history
  Requires signature: true
  """
  def get_position_margin_change_history_v1(client, symbol, type: type, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/positionMargin/history",
          query: [symbol: symbol, type: type, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Change Position Mode
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/positionSide/dual
  Requires signature: true
  """
  def change_position_mode_v1(client, dualSidePosition, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/positionSide/dual",
          query: [dualSidePosition: dualSidePosition, recvWindow: recvWindow, timestamp: nil],
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
  Path: /fapi/v1/stock/contract
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
          url: "/fapi/v1/stock/contract",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}],
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
  Path: /fapi/v1/userTrades
  Requires signature: true
  """
  def account_trade_list_v1(client, symbol, orderId: orderId, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/userTrades",
          query: [symbol: symbol, orderId: orderId, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Position Information V2
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v2/positionRisk
  Requires signature: true
  """
  def position_information_v2(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v2/positionRisk",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Position Information V3
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v3/positionRisk
  Requires signature: true
  """
  def position_information_v3(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v3/positionRisk",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end