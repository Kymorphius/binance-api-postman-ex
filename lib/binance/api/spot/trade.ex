defmodule Binance.API.Spot.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com", testnet_url: "https://testnet.binance.vision", demo_url: "https://demo-api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Cancel All Open Orders on a Symbol
  Method: DELETE
  Path: /api/v3/openOrders
  Requires signature: true
  """
  def cancel_all_open_orders_on_a_symbol_v3(client, symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
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
  Cancel order
  Method: DELETE
  Path: /api/v3/order
  Requires signature: true
  """
  def cancel_order_v3(client, symbol, orderId: orderId, origClientOrderId: origClientOrderId, newClientOrderId: newClientOrderId, cancelRestrictions: cancelRestrictions, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/api/v3/order",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, newClientOrderId: newClientOrderId, cancelRestrictions: cancelRestrictions, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New order
  Method: POST
  Path: /api/v3/order
  Requires signature: true
  """
  def new_order_v3(client, symbol, side, type, timeInForce: timeInForce, quantity: quantity, quoteOrderQty: quoteOrderQty, price: price, newClientOrderId: newClientOrderId, strategyId: strategyId, strategyType: strategyType, stopPrice: stopPrice, trailingDelta: trailingDelta, icebergQty: icebergQty, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, pegPriceType: pegPriceType, pegOffsetValue: pegOffsetValue, pegOffsetType: pegOffsetType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/order",
          query: [symbol: symbol, side: side, type: type, timeInForce: timeInForce, quantity: quantity, quoteOrderQty: quoteOrderQty, price: price, newClientOrderId: newClientOrderId, strategyId: strategyId, strategyType: strategyType, stopPrice: stopPrice, trailingDelta: trailingDelta, icebergQty: icebergQty, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, pegPriceType: pegPriceType, pegOffsetValue: pegOffsetValue, pegOffsetType: pegOffsetType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Order Amend Keep Priority
  Method: PUT
  Path: /api/v3/order/amend/keepPriority
  Requires signature: true
  """
  def order_amend_keep_priority_v3(client, symbol, newQty, orderId: orderId, origClientOrderId: origClientOrderId, newClientOrderId: newClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/api/v3/order/amend/keepPriority",
          query: [symbol: symbol, orderId: orderId, origClientOrderId: origClientOrderId, newClientOrderId: newClientOrderId, newQty: newQty, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel an Existing Order and Send a New Order
  Method: POST
  Path: /api/v3/order/cancelReplace
  Requires signature: true
  """
  def cancel_an_existing_order_and_send_a_new_order_v3(client, symbol, side, type, cancelReplaceMode, timeInForce: timeInForce, quantity: quantity, quoteOrderQty: quoteOrderQty, price: price, cancelNewClientOrderId: cancelNewClientOrderId, cancelOrigClientOrderId: cancelOrigClientOrderId, cancelOrderId: cancelOrderId, newClientOrderId: newClientOrderId, strategyId: strategyId, strategyType: strategyType, stopPrice: stopPrice, trailingDelta: trailingDelta, icebergQty: icebergQty, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, cancelRestrictions: cancelRestrictions, orderRateLimitExceededMode: orderRateLimitExceededMode, pegPriceType: pegPriceType, pegOffsetValue: pegOffsetValue, pegOffsetType: pegOffsetType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/order/cancelReplace",
          query: [symbol: symbol, side: side, type: type, cancelReplaceMode: cancelReplaceMode, timeInForce: timeInForce, quantity: quantity, quoteOrderQty: quoteOrderQty, price: price, cancelNewClientOrderId: cancelNewClientOrderId, cancelOrigClientOrderId: cancelOrigClientOrderId, cancelOrderId: cancelOrderId, newClientOrderId: newClientOrderId, strategyId: strategyId, strategyType: strategyType, stopPrice: stopPrice, trailingDelta: trailingDelta, icebergQty: icebergQty, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, cancelRestrictions: cancelRestrictions, orderRateLimitExceededMode: orderRateLimitExceededMode, pegPriceType: pegPriceType, pegOffsetValue: pegOffsetValue, pegOffsetType: pegOffsetType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New OCO - Deprecated
  Method: POST
  Path: /api/v3/order/oco
  Requires signature: true
  """
  def new_oco_deprecated_v3(client, symbol, side, quantity, price, stopPrice, listClientOrderId: listClientOrderId, limitClientOrderId: limitClientOrderId, limitStrategyId: limitStrategyId, limitStrategyType: limitStrategyType, limitIcebergQty: limitIcebergQty, trailingDelta: trailingDelta, stopClientOrderId: stopClientOrderId, stopStrategyId: stopStrategyId, stopStrategyType: stopStrategyType, stopLimitPrice: stopLimitPrice, stopIcebergQty: stopIcebergQty, stopLimitTimeInForce: stopLimitTimeInForce, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/order/oco",
          query: [symbol: symbol, listClientOrderId: listClientOrderId, side: side, quantity: quantity, limitClientOrderId: limitClientOrderId, price: price, limitStrategyId: limitStrategyId, limitStrategyType: limitStrategyType, limitIcebergQty: limitIcebergQty, trailingDelta: trailingDelta, stopClientOrderId: stopClientOrderId, stopPrice: stopPrice, stopStrategyId: stopStrategyId, stopStrategyType: stopStrategyType, stopLimitPrice: stopLimitPrice, stopIcebergQty: stopIcebergQty, stopLimitTimeInForce: stopLimitTimeInForce, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Test new order
  Method: POST
  Path: /api/v3/order/test
  Requires signature: true
  """
  def test_new_order_v3(client, symbol, side, type, computeCommissionRates: computeCommissionRates, timeInForce: timeInForce, quantity: quantity, quoteOrderQty: quoteOrderQty, price: price, newClientOrderId: newClientOrderId, strategyId: strategyId, strategyType: strategyType, stopPrice: stopPrice, trailingDelta: trailingDelta, icebergQty: icebergQty, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, pegPriceType: pegPriceType, pegOffsetValue: pegOffsetValue, pegOffsetType: pegOffsetType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/order/test",
          query: [computeCommissionRates: computeCommissionRates, symbol: symbol, side: side, type: type, timeInForce: timeInForce, quantity: quantity, quoteOrderQty: quoteOrderQty, price: price, newClientOrderId: newClientOrderId, strategyId: strategyId, strategyType: strategyType, stopPrice: stopPrice, trailingDelta: trailingDelta, icebergQty: icebergQty, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, pegPriceType: pegPriceType, pegOffsetValue: pegOffsetValue, pegOffsetType: pegOffsetType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel Order list
  Method: DELETE
  Path: /api/v3/orderList
  Requires signature: true
  """
  def cancel_order_list_v3(client, symbol, orderListId: orderListId, listClientOrderId: listClientOrderId, newClientOrderId: newClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/api/v3/orderList",
          query: [symbol: symbol, orderListId: orderListId, listClientOrderId: listClientOrderId, newClientOrderId: newClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New Order list - OCO
  Method: POST
  Path: /api/v3/orderList/oco
  Requires signature: true
  """
  def new_order_list_oco_v3(client, symbol, side, quantity, aboveType, belowType, listClientOrderId: listClientOrderId, aboveClientOrderId: aboveClientOrderId, aboveIcebergQty: aboveIcebergQty, abovePrice: abovePrice, aboveStopPrice: aboveStopPrice, aboveTrailingDelta: aboveTrailingDelta, aboveTimeInForce: aboveTimeInForce, aboveStrategyId: aboveStrategyId, aboveStrategyType: aboveStrategyType, abovePegPriceType: abovePegPriceType, abovePegOffsetType: abovePegOffsetType, abovePegOffsetValue: abovePegOffsetValue, belowClientOrderId: belowClientOrderId, belowIcebergQty: belowIcebergQty, belowPrice: belowPrice, belowStopPrice: belowStopPrice, belowTrailingDelta: belowTrailingDelta, belowTimeInForce: belowTimeInForce, belowStrategyId: belowStrategyId, belowStrategyType: belowStrategyType, belowPegPriceType: belowPegPriceType, belowPegOffsetType: belowPegOffsetType, belowPegOffsetValue: belowPegOffsetValue, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/orderList/oco",
          query: [symbol: symbol, listClientOrderId: listClientOrderId, side: side, quantity: quantity, aboveType: aboveType, aboveClientOrderId: aboveClientOrderId, aboveIcebergQty: aboveIcebergQty, abovePrice: abovePrice, aboveStopPrice: aboveStopPrice, aboveTrailingDelta: aboveTrailingDelta, aboveTimeInForce: aboveTimeInForce, aboveStrategyId: aboveStrategyId, aboveStrategyType: aboveStrategyType, abovePegPriceType: abovePegPriceType, abovePegOffsetType: abovePegOffsetType, abovePegOffsetValue: abovePegOffsetValue, belowType: belowType, belowClientOrderId: belowClientOrderId, belowIcebergQty: belowIcebergQty, belowPrice: belowPrice, belowStopPrice: belowStopPrice, belowTrailingDelta: belowTrailingDelta, belowTimeInForce: belowTimeInForce, belowStrategyId: belowStrategyId, belowStrategyType: belowStrategyType, belowPegPriceType: belowPegPriceType, belowPegOffsetType: belowPegOffsetType, belowPegOffsetValue: belowPegOffsetValue, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New Order List - OPO
  Method: POST
  Path: /api/v3/orderList/opo
  Requires signature: true
  """
  def new_order_list_opo_v3(client, symbol, workingType, workingSide, workingPrice, workingQuantity, pendingType, pendingSide, listClientOrderId: listClientOrderId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, workingClientOrderId: workingClientOrderId, workingIcebergQty: workingIcebergQty, workingTimeInForce: workingTimeInForce, workingStrategyId: workingStrategyId, workingStrategyType: workingStrategyType, workingPegPriceType: workingPegPriceType, workingPegOffsetType: workingPegOffsetType, workingPegOffsetValue: workingPegOffsetValue, pendingClientOrderId: pendingClientOrderId, pendingPrice: pendingPrice, pendingStopPrice: pendingStopPrice, pendingTrailingDelta: pendingTrailingDelta, pendingIcebergQty: pendingIcebergQty, pendingTimeInForce: pendingTimeInForce, pendingStrategyId: pendingStrategyId, pendingStrategyType: pendingStrategyType, pendingPegPriceType: pendingPegPriceType, pendingPegOffsetType: pendingPegOffsetType, pendingPegOffsetValue: pendingPegOffsetValue, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/orderList/opo",
          query: [symbol: symbol, listClientOrderId: listClientOrderId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, workingType: workingType, workingSide: workingSide, workingClientOrderId: workingClientOrderId, workingPrice: workingPrice, workingQuantity: workingQuantity, workingIcebergQty: workingIcebergQty, workingTimeInForce: workingTimeInForce, workingStrategyId: workingStrategyId, workingStrategyType: workingStrategyType, workingPegPriceType: workingPegPriceType, workingPegOffsetType: workingPegOffsetType, workingPegOffsetValue: workingPegOffsetValue, pendingType: pendingType, pendingSide: pendingSide, pendingClientOrderId: pendingClientOrderId, pendingPrice: pendingPrice, pendingStopPrice: pendingStopPrice, pendingTrailingDelta: pendingTrailingDelta, pendingIcebergQty: pendingIcebergQty, pendingTimeInForce: pendingTimeInForce, pendingStrategyId: pendingStrategyId, pendingStrategyType: pendingStrategyType, pendingPegPriceType: pendingPegPriceType, pendingPegOffsetType: pendingPegOffsetType, pendingPegOffsetValue: pendingPegOffsetValue, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New Order List - OPOCO
  Method: POST
  Path: /api/v3/orderList/opoco
  Requires signature: true
  """
  def new_order_list_opoco_v3(client, symbol, workingType, workingSide, workingPrice, workingQuantity, pendingSide, pendingAboveType, listClientOrderId: listClientOrderId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, workingClientOrderId: workingClientOrderId, workingIcebergQty: workingIcebergQty, workingTimeInForce: workingTimeInForce, workingStrategyId: workingStrategyId, workingStrategyType: workingStrategyType, workingPegPriceType: workingPegPriceType, workingPegOffsetType: workingPegOffsetType, workingPegOffsetValue: workingPegOffsetValue, pendingAboveClientOrderId: pendingAboveClientOrderId, pendingAbovePrice: pendingAbovePrice, pendingAboveStopPrice: pendingAboveStopPrice, pendingAboveTrailingDelta: pendingAboveTrailingDelta, pendingAboveIcebergQty: pendingAboveIcebergQty, pendingAboveTimeInForce: pendingAboveTimeInForce, pendingAboveStrategyId: pendingAboveStrategyId, pendingAboveStrategyType: pendingAboveStrategyType, pendingAbovePegPriceType: pendingAbovePegPriceType, pendingAbovePegOffsetType: pendingAbovePegOffsetType, pendingAbovePegOffsetValue: pendingAbovePegOffsetValue, pendingBelowType: pendingBelowType, pendingBelowClientOrderId: pendingBelowClientOrderId, pendingBelowPrice: pendingBelowPrice, pendingBelowStopPrice: pendingBelowStopPrice, pendingBelowTrailingDelta: pendingBelowTrailingDelta, pendingBelowIcebergQty: pendingBelowIcebergQty, pendingBelowTimeInForce: pendingBelowTimeInForce, pendingBelowStrategyId: pendingBelowStrategyId, pendingBelowStrategyType: pendingBelowStrategyType, pendingBelowPegPriceType: pendingBelowPegPriceType, pendingBelowPegOffsetType: pendingBelowPegOffsetType, pendingBelowPegOffsetValue: pendingBelowPegOffsetValue, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/orderList/opoco",
          query: [symbol: symbol, listClientOrderId: listClientOrderId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, workingType: workingType, workingSide: workingSide, workingClientOrderId: workingClientOrderId, workingPrice: workingPrice, workingQuantity: workingQuantity, workingIcebergQty: workingIcebergQty, workingTimeInForce: workingTimeInForce, workingStrategyId: workingStrategyId, workingStrategyType: workingStrategyType, workingPegPriceType: workingPegPriceType, workingPegOffsetType: workingPegOffsetType, workingPegOffsetValue: workingPegOffsetValue, pendingSide: pendingSide, pendingAboveType: pendingAboveType, pendingAboveClientOrderId: pendingAboveClientOrderId, pendingAbovePrice: pendingAbovePrice, pendingAboveStopPrice: pendingAboveStopPrice, pendingAboveTrailingDelta: pendingAboveTrailingDelta, pendingAboveIcebergQty: pendingAboveIcebergQty, pendingAboveTimeInForce: pendingAboveTimeInForce, pendingAboveStrategyId: pendingAboveStrategyId, pendingAboveStrategyType: pendingAboveStrategyType, pendingAbovePegPriceType: pendingAbovePegPriceType, pendingAbovePegOffsetType: pendingAbovePegOffsetType, pendingAbovePegOffsetValue: pendingAbovePegOffsetValue, pendingBelowType: pendingBelowType, pendingBelowClientOrderId: pendingBelowClientOrderId, pendingBelowPrice: pendingBelowPrice, pendingBelowStopPrice: pendingBelowStopPrice, pendingBelowTrailingDelta: pendingBelowTrailingDelta, pendingBelowIcebergQty: pendingBelowIcebergQty, pendingBelowTimeInForce: pendingBelowTimeInForce, pendingBelowStrategyId: pendingBelowStrategyId, pendingBelowStrategyType: pendingBelowStrategyType, pendingBelowPegPriceType: pendingBelowPegPriceType, pendingBelowPegOffsetType: pendingBelowPegOffsetType, pendingBelowPegOffsetValue: pendingBelowPegOffsetValue, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New Order list - OTO
  Method: POST
  Path: /api/v3/orderList/oto
  Requires signature: true
  """
  def new_order_list_oto_v3(client, symbol, workingType, workingSide, workingPrice, workingQuantity, pendingType, pendingSide, pendingQuantity, listClientOrderId: listClientOrderId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, workingClientOrderId: workingClientOrderId, workingIcebergQty: workingIcebergQty, workingTimeInForce: workingTimeInForce, workingStrategyId: workingStrategyId, workingStrategyType: workingStrategyType, workingPegPriceType: workingPegPriceType, workingPegOffsetType: workingPegOffsetType, workingPegOffsetValue: workingPegOffsetValue, pendingClientOrderId: pendingClientOrderId, pendingPrice: pendingPrice, pendingStopPrice: pendingStopPrice, pendingTrailingDelta: pendingTrailingDelta, pendingIcebergQty: pendingIcebergQty, pendingTimeInForce: pendingTimeInForce, pendingStrategyId: pendingStrategyId, pendingStrategyType: pendingStrategyType, pendingPegPriceType: pendingPegPriceType, pendingPegOffsetType: pendingPegOffsetType, pendingPegOffsetValue: pendingPegOffsetValue, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/orderList/oto",
          query: [symbol: symbol, listClientOrderId: listClientOrderId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, workingType: workingType, workingSide: workingSide, workingClientOrderId: workingClientOrderId, workingPrice: workingPrice, workingQuantity: workingQuantity, workingIcebergQty: workingIcebergQty, workingTimeInForce: workingTimeInForce, workingStrategyId: workingStrategyId, workingStrategyType: workingStrategyType, workingPegPriceType: workingPegPriceType, workingPegOffsetType: workingPegOffsetType, workingPegOffsetValue: workingPegOffsetValue, pendingType: pendingType, pendingSide: pendingSide, pendingClientOrderId: pendingClientOrderId, pendingPrice: pendingPrice, pendingStopPrice: pendingStopPrice, pendingTrailingDelta: pendingTrailingDelta, pendingQuantity: pendingQuantity, pendingIcebergQty: pendingIcebergQty, pendingTimeInForce: pendingTimeInForce, pendingStrategyId: pendingStrategyId, pendingStrategyType: pendingStrategyType, pendingPegPriceType: pendingPegPriceType, pendingPegOffsetType: pendingPegOffsetType, pendingPegOffsetValue: pendingPegOffsetValue, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New Order list - OTOCO
  Method: POST
  Path: /api/v3/orderList/otoco
  Requires signature: true
  """
  def new_order_list_otoco_v3(client, symbol, workingType, workingSide, workingPrice, workingQuantity, pendingSide, pendingQuantity, pendingAboveType, listClientOrderId: listClientOrderId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, workingClientOrderId: workingClientOrderId, workingIcebergQty: workingIcebergQty, workingTimeInForce: workingTimeInForce, workingStrategyId: workingStrategyId, workingStrategyType: workingStrategyType, workingPegPriceType: workingPegPriceType, workingPegOffsetType: workingPegOffsetType, workingPegOffsetValue: workingPegOffsetValue, pendingAboveClientOrderId: pendingAboveClientOrderId, pendingAbovePrice: pendingAbovePrice, pendingAboveStopPrice: pendingAboveStopPrice, pendingAboveTrailingDelta: pendingAboveTrailingDelta, pendingAboveIcebergQty: pendingAboveIcebergQty, pendingAboveTimeInForce: pendingAboveTimeInForce, pendingAboveStrategyId: pendingAboveStrategyId, pendingAboveStrategyType: pendingAboveStrategyType, pendingAbovePegPriceType: pendingAbovePegPriceType, pendingAbovePegOffsetType: pendingAbovePegOffsetType, pendingAbovePegOffsetValue: pendingAbovePegOffsetValue, pendingBelowType: pendingBelowType, pendingBelowClientOrderId: pendingBelowClientOrderId, pendingBelowPrice: pendingBelowPrice, pendingBelowStopPrice: pendingBelowStopPrice, pendingBelowTrailingDelta: pendingBelowTrailingDelta, pendingBelowIcebergQty: pendingBelowIcebergQty, pendingBelowTimeInForce: pendingBelowTimeInForce, pendingBelowStrategyId: pendingBelowStrategyId, pendingBelowStrategyType: pendingBelowStrategyType, pendingBelowPegPriceType: pendingBelowPegPriceType, pendingBelowPegOffsetType: pendingBelowPegOffsetType, pendingBelowPegOffsetValue: pendingBelowPegOffsetValue, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/orderList/otoco",
          query: [symbol: symbol, listClientOrderId: listClientOrderId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, workingType: workingType, workingSide: workingSide, workingClientOrderId: workingClientOrderId, workingPrice: workingPrice, workingQuantity: workingQuantity, workingIcebergQty: workingIcebergQty, workingTimeInForce: workingTimeInForce, workingStrategyId: workingStrategyId, workingStrategyType: workingStrategyType, workingPegPriceType: workingPegPriceType, workingPegOffsetType: workingPegOffsetType, workingPegOffsetValue: workingPegOffsetValue, pendingSide: pendingSide, pendingQuantity: pendingQuantity, pendingAboveType: pendingAboveType, pendingAboveClientOrderId: pendingAboveClientOrderId, pendingAbovePrice: pendingAbovePrice, pendingAboveStopPrice: pendingAboveStopPrice, pendingAboveTrailingDelta: pendingAboveTrailingDelta, pendingAboveIcebergQty: pendingAboveIcebergQty, pendingAboveTimeInForce: pendingAboveTimeInForce, pendingAboveStrategyId: pendingAboveStrategyId, pendingAboveStrategyType: pendingAboveStrategyType, pendingAbovePegPriceType: pendingAbovePegPriceType, pendingAbovePegOffsetType: pendingAbovePegOffsetType, pendingAbovePegOffsetValue: pendingAbovePegOffsetValue, pendingBelowType: pendingBelowType, pendingBelowClientOrderId: pendingBelowClientOrderId, pendingBelowPrice: pendingBelowPrice, pendingBelowStopPrice: pendingBelowStopPrice, pendingBelowTrailingDelta: pendingBelowTrailingDelta, pendingBelowIcebergQty: pendingBelowIcebergQty, pendingBelowTimeInForce: pendingBelowTimeInForce, pendingBelowStrategyId: pendingBelowStrategyId, pendingBelowStrategyType: pendingBelowStrategyType, pendingBelowPegPriceType: pendingBelowPegPriceType, pendingBelowPegOffsetType: pendingBelowPegOffsetType, pendingBelowPegOffsetValue: pendingBelowPegOffsetValue, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  New order using SOR
  Method: POST
  Path: /api/v3/sor/order
  Requires signature: true
  """
  def new_order_using_sor_v3(client, symbol, side, type, quantity, timeInForce: timeInForce, price: price, newClientOrderId: newClientOrderId, strategyId: strategyId, strategyType: strategyType, icebergQty: icebergQty, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/sor/order",
          query: [symbol: symbol, side: side, type: type, timeInForce: timeInForce, quantity: quantity, price: price, newClientOrderId: newClientOrderId, strategyId: strategyId, strategyType: strategyType, icebergQty: icebergQty, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Test new order using SOR
  Method: POST
  Path: /api/v3/sor/order/test
  Requires signature: true
  """
  def test_new_order_using_sor_v3(client, symbol, side, type, quantity, computeCommissionRates: computeCommissionRates, timeInForce: timeInForce, price: price, newClientOrderId: newClientOrderId, strategyId: strategyId, strategyType: strategyType, icebergQty: icebergQty, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/sor/order/test",
          query: [computeCommissionRates: computeCommissionRates, symbol: symbol, side: side, type: type, timeInForce: timeInForce, quantity: quantity, price: price, newClientOrderId: newClientOrderId, strategyId: strategyId, strategyType: strategyType, icebergQty: icebergQty, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end