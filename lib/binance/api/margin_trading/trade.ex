defmodule Binance.API.MarginTrading.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Query Margin Account's all OCO
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/allOrderList
  Requires signature: true
  """
  def query_margin_account_s_all_oco_v1(client, isIsolated: isIsolated, symbol: symbol, fromId: fromId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/allOrderList",
          query: [isIsolated: isIsolated, symbol: symbol, fromId: fromId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin Account's All Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/allOrders
  Requires signature: true
  """
  def query_margin_account_s_all_orders_v1(client, symbol, isIsolated: isIsolated, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/allOrders",
          query: [symbol: symbol, isIsolated: isIsolated, orderId: orderId, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Special key List
  Variant: Trade
  Tags: low_latency_trading, trade
  Method: GET
  Path: /sapi/v1/margin/api-key-list
  Requires signature: true
  """
  def query_special_key_list_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/api-key-list",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Create Special Key
  Variant: Trade
  Tags: low_latency_trading, trade
  Method: POST
  Path: /sapi/v1/margin/apiKey
  Requires signature: true
  """
  def create_special_key_v1(client, apiName, symbol: symbol, ip: ip, publicKey: publicKey, permissionMode: permissionMode, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/apiKey",
          query: [apiName: apiName, symbol: symbol, ip: ip, publicKey: publicKey, permissionMode: permissionMode, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Delete Special Key
  Variant: Trade
  Tags: low_latency_trading, trade
  Method: DELETE
  Path: /sapi/v1/margin/apiKey
  Requires signature: true
  """
  def delete_special_key_v1(client, apiName: apiName, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/margin/apiKey",
          query: [apiName: apiName, symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Special key
  Variant: Trade
  Tags: low_latency_trading, trade
  Method: GET
  Path: /sapi/v1/margin/apiKey
  Requires signature: true
  """
  def query_special_key_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/apiKey",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Edit ip for Special Key
  Variant: Trade
  Tags: low_latency_trading, trade
  Method: PUT
  Path: /sapi/v1/margin/apiKey/ip
  Requires signature: true
  """
  def edit_ip_for_special_key_v1(client, ip, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/sapi/v1/margin/apiKey/ip",
          query: [symbol: symbol, ip: ip, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Small Liability Exchange Coin List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/exchange-small-liability
  Requires signature: true
  """
  def get_small_liability_exchange_coin_list_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/exchange-small-liability",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Small Liability Exchange
  Variant: Margin
  Tags: margin
  Method: POST
  Path: /sapi/v1/margin/exchange-small-liability
  Requires signature: true
  """
  def small_liability_exchange_v1(client, assetNames, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/exchange-small-liability",
          query: [assetNames: assetNames, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Small Liability Exchange History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/exchange-small-liability-history
  Requires signature: true
  """
  def get_small_liability_exchange_history_v1(client, current, size, startTime: startTime, endTime: endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/exchange-small-liability-history",
          query: [current: current, size: size, startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Force Liquidation Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/forceLiquidationRec
  Requires signature: true
  """
  def get_force_liquidation_record_v1(client, startTime: startTime, endTime: endTime, isolatedSymbol: isolatedSymbol, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/forceLiquidationRec",
          query: [startTime: startTime, endTime: endTime, isolatedSymbol: isolatedSymbol, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Manual Liquidation
  Variant: Margin
  Tags: margin
  Method: POST
  Path: /sapi/v1/margin/manual-liquidation
  Requires signature: true
  """
  def margin_manual_liquidation_v1(client, type, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/manual-liquidation",
          query: [type: type, symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Prevented Matches
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/myPreventedMatches
  Requires signature: true
  """
  def query_prevented_matches_v1(client, symbol, preventedMatchId: preventedMatchId, orderId: orderId, fromPreventedMatchId: fromPreventedMatchId, recvWindow: recvWindow, isIsolated: isIsolated) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/myPreventedMatches",
          query: [symbol: symbol, preventedMatchId: preventedMatchId, orderId: orderId, fromPreventedMatchId: fromPreventedMatchId, recvWindow: recvWindow, isIsolated: isIsolated, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin Account's Trade List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/myTrades
  Requires signature: true
  """
  def query_margin_account_s_trade_list_v1(client, symbol, isIsolated: isIsolated, orderId: orderId, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/myTrades",
          query: [symbol: symbol, isIsolated: isIsolated, orderId: orderId, startTime: startTime, endTime: endTime, fromId: fromId, limit: limit, recvWindow: recvWindow, timestamp: nil],
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
  Path: /sapi/v1/margin/openOrderList
  Requires signature: true
  """
  def query_margin_account_s_open_oco_v1(client, isIsolated: isIsolated, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/openOrderList",
          query: [isIsolated: isIsolated, symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Account Cancel all Open Orders on a Symbol
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /sapi/v1/margin/openOrders
  Requires signature: true
  """
  def margin_account_cancel_all_open_orders_on_a_symbol_v1(client, symbol, isIsolated: isIsolated, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/margin/openOrders",
          query: [symbol: symbol, isIsolated: isIsolated, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin Account's Open Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/openOrders
  Requires signature: true
  """
  def query_margin_account_s_open_orders_v1(client, symbol: symbol, isIsolated: isIsolated, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/openOrders",
          query: [symbol: symbol, isIsolated: isIsolated, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Account Cancel Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /sapi/v1/margin/order
  Requires signature: true
  """
  def margin_account_cancel_order_v1(client, symbol, isIsolated: isIsolated, orderId: orderId, origClientOrderId: origClientOrderId, newClientOrderId: newClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/margin/order",
          query: [symbol: symbol, isIsolated: isIsolated, orderId: orderId, origClientOrderId: origClientOrderId, newClientOrderId: newClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Account New Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/margin/order
  Requires signature: true
  """
  def margin_account_new_order_v1(client, symbol, side, type, isIsolated: isIsolated, quantity: quantity, quoteOrderQty: quoteOrderQty, price: price, stopPrice: stopPrice, newClientOrderId: newClientOrderId, icebergQty: icebergQty, newOrderRespType: newOrderRespType, sideEffectType: sideEffectType, timeInForce: timeInForce, selfTradePreventionMode: selfTradePreventionMode, autoRepayAtCancel: autoRepayAtCancel, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/order",
          query: [symbol: symbol, isIsolated: isIsolated, side: side, type: type, quantity: quantity, quoteOrderQty: quoteOrderQty, price: price, stopPrice: stopPrice, newClientOrderId: newClientOrderId, icebergQty: icebergQty, newOrderRespType: newOrderRespType, sideEffectType: sideEffectType, timeInForce: timeInForce, selfTradePreventionMode: selfTradePreventionMode, autoRepayAtCancel: autoRepayAtCancel, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin Account's Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/order
  Requires signature: true
  """
  def query_margin_account_s_order_v1(client, symbol, isIsolated: isIsolated, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/order",
          query: [symbol: symbol, isIsolated: isIsolated, orderId: orderId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
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
  Path: /sapi/v1/margin/order/oco
  Requires signature: true
  """
  def margin_account_new_oco_v1(client, symbol, side, quantity, price, stopPrice, isIsolated: isIsolated, listClientOrderId: listClientOrderId, limitClientOrderId: limitClientOrderId, limitIcebergQty: limitIcebergQty, stopClientOrderId: stopClientOrderId, stopLimitPrice: stopLimitPrice, stopIcebergQty: stopIcebergQty, stopLimitTimeInForce: stopLimitTimeInForce, newOrderRespType: newOrderRespType, sideEffectType: sideEffectType, selfTradePreventionMode: selfTradePreventionMode, autoRepayAtCancel: autoRepayAtCancel, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/order/oco",
          query: [symbol: symbol, isIsolated: isIsolated, listClientOrderId: listClientOrderId, side: side, quantity: quantity, limitClientOrderId: limitClientOrderId, price: price, limitIcebergQty: limitIcebergQty, stopClientOrderId: stopClientOrderId, stopPrice: stopPrice, stopLimitPrice: stopLimitPrice, stopIcebergQty: stopIcebergQty, stopLimitTimeInForce: stopLimitTimeInForce, newOrderRespType: newOrderRespType, sideEffectType: sideEffectType, selfTradePreventionMode: selfTradePreventionMode, autoRepayAtCancel: autoRepayAtCancel, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Account New OTO
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/margin/order/oto
  Requires signature: true
  """
  def margin_account_new_oto_v1(client, symbol, workingType, workingSide, workingPrice, workingQuantity, workingIcebergQty, pendingType, pendingSide, pendingQuantity, isIsolated: isIsolated, listClientOrderId: listClientOrderId, newOrderRespType: newOrderRespType, sideEffectType: sideEffectType, selfTradePreventionMode: selfTradePreventionMode, autoRepayAtCancel: autoRepayAtCancel, workingClientOrderId: workingClientOrderId, workingTimeInForce: workingTimeInForce, pendingClientOrderId: pendingClientOrderId, pendingPrice: pendingPrice, pendingStopPrice: pendingStopPrice, pendingTrailingDelta: pendingTrailingDelta, pendingIcebergQty: pendingIcebergQty, pendingTimeInForce: pendingTimeInForce) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/order/oto",
          query: [symbol: symbol, isIsolated: isIsolated, listClientOrderId: listClientOrderId, newOrderRespType: newOrderRespType, sideEffectType: sideEffectType, selfTradePreventionMode: selfTradePreventionMode, autoRepayAtCancel: autoRepayAtCancel, workingType: workingType, workingSide: workingSide, workingClientOrderId: workingClientOrderId, workingPrice: workingPrice, workingQuantity: workingQuantity, workingIcebergQty: workingIcebergQty, workingTimeInForce: workingTimeInForce, pendingType: pendingType, pendingSide: pendingSide, pendingClientOrderId: pendingClientOrderId, pendingPrice: pendingPrice, pendingStopPrice: pendingStopPrice, pendingTrailingDelta: pendingTrailingDelta, pendingQuantity: pendingQuantity, pendingIcebergQty: pendingIcebergQty, pendingTimeInForce: pendingTimeInForce, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Account New OTOCO
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/margin/order/otoco
  Requires signature: true
  """
  def margin_account_new_otoco_v1(client, symbol, workingType, workingSide, workingPrice, workingQuantity, pendingSide, pendingQuantity, pendingAboveType, isIsolated: isIsolated, sideEffectType: sideEffectType, autoRepayAtCancel: autoRepayAtCancel, listClientOrderId: listClientOrderId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, workingClientOrderId: workingClientOrderId, workingIcebergQty: workingIcebergQty, workingTimeInForce: workingTimeInForce, pendingAboveClientOrderId: pendingAboveClientOrderId, pendingAbovePrice: pendingAbovePrice, pendingAboveStopPrice: pendingAboveStopPrice, pendingAboveTrailingDelta: pendingAboveTrailingDelta, pendingAboveIcebergQty: pendingAboveIcebergQty, pendingAboveTimeInForce: pendingAboveTimeInForce, pendingBelowType: pendingBelowType, pendingBelowClientOrderId: pendingBelowClientOrderId, pendingBelowPrice: pendingBelowPrice, pendingBelowStopPrice: pendingBelowStopPrice, pendingBelowTrailingDelta: pendingBelowTrailingDelta, pendingBelowIcebergQty: pendingBelowIcebergQty, pendingBelowTimeInForce: pendingBelowTimeInForce) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/order/otoco",
          query: [symbol: symbol, isIsolated: isIsolated, sideEffectType: sideEffectType, autoRepayAtCancel: autoRepayAtCancel, listClientOrderId: listClientOrderId, newOrderRespType: newOrderRespType, selfTradePreventionMode: selfTradePreventionMode, workingType: workingType, workingSide: workingSide, workingClientOrderId: workingClientOrderId, workingPrice: workingPrice, workingQuantity: workingQuantity, workingIcebergQty: workingIcebergQty, workingTimeInForce: workingTimeInForce, pendingSide: pendingSide, pendingQuantity: pendingQuantity, pendingAboveType: pendingAboveType, pendingAboveClientOrderId: pendingAboveClientOrderId, pendingAbovePrice: pendingAbovePrice, pendingAboveStopPrice: pendingAboveStopPrice, pendingAboveTrailingDelta: pendingAboveTrailingDelta, pendingAboveIcebergQty: pendingAboveIcebergQty, pendingAboveTimeInForce: pendingAboveTimeInForce, pendingBelowType: pendingBelowType, pendingBelowClientOrderId: pendingBelowClientOrderId, pendingBelowPrice: pendingBelowPrice, pendingBelowStopPrice: pendingBelowStopPrice, pendingBelowTrailingDelta: pendingBelowTrailingDelta, pendingBelowIcebergQty: pendingBelowIcebergQty, pendingBelowTimeInForce: pendingBelowTimeInForce, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Account Cancel OCO
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /sapi/v1/margin/orderList
  Requires signature: true
  """
  def margin_account_cancel_oco_v1(client, symbol, isIsolated: isIsolated, orderListId: orderListId, listClientOrderId: listClientOrderId, newClientOrderId: newClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/margin/orderList",
          query: [symbol: symbol, isIsolated: isIsolated, orderListId: orderListId, listClientOrderId: listClientOrderId, newClientOrderId: newClientOrderId, recvWindow: recvWindow, timestamp: nil],
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
  Path: /sapi/v1/margin/orderList
  Requires signature: true
  """
  def query_margin_account_s_oco_v1(client, isIsolated: isIsolated, symbol: symbol, orderListId: orderListId, origClientOrderId: origClientOrderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/orderList",
          query: [isIsolated: isIsolated, symbol: symbol, orderListId: orderListId, origClientOrderId: origClientOrderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Current Margin Order Count Usage
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /sapi/v1/margin/rateLimit/order
  Requires signature: true
  """
  def query_current_margin_order_count_usage_v1(client, isIsolated: isIsolated, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/rateLimit/order",
          query: [isIsolated: isIsolated, symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end