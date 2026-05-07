defmodule Binance.API.Spot.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com", testnet_url: "https://testnet.binance.vision", demo_url: "https://demo-api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec cancel_all_open_orders_on_a_symbol_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel All Open Orders on a Symbol
  Method: DELETE
  Path: /api/v3/openOrders
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def cancel_all_open_orders_on_a_symbol_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/api/v3/openOrders",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec cancel_order_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel order
  Method: DELETE
  Path: /api/v3/order
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, newClientOrderId, cancelRestrictions, recvWindow
  """
  def cancel_order_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/api/v3/order",
          query: [symbol: symbol, orderId: Keyword.get(opts, :orderId), origClientOrderId: Keyword.get(opts, :origClientOrderId), newClientOrderId: Keyword.get(opts, :newClientOrderId), cancelRestrictions: Keyword.get(opts, :cancelRestrictions), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec new_order_v3(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  New order
  Method: POST
  Path: /api/v3/order
  Requires signature: true
  Required: symbol, side, type
  Optional: timeInForce, quantity, quoteOrderQty, price, newClientOrderId, strategyId, strategyType, stopPrice, trailingDelta, icebergQty, newOrderRespType, selfTradePreventionMode, pegPriceType, pegOffsetValue, pegOffsetType, recvWindow
  """
  def new_order_v3(client, symbol, side, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/order",
          query: [symbol: symbol, side: side, type: type, timeInForce: Keyword.get(opts, :timeInForce), quantity: Keyword.get(opts, :quantity), quoteOrderQty: Keyword.get(opts, :quoteOrderQty), price: Keyword.get(opts, :price), newClientOrderId: Keyword.get(opts, :newClientOrderId), strategyId: Keyword.get(opts, :strategyId), strategyType: Keyword.get(opts, :strategyType), stopPrice: Keyword.get(opts, :stopPrice), trailingDelta: Keyword.get(opts, :trailingDelta), icebergQty: Keyword.get(opts, :icebergQty), newOrderRespType: Keyword.get(opts, :newOrderRespType), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), pegPriceType: Keyword.get(opts, :pegPriceType), pegOffsetValue: Keyword.get(opts, :pegOffsetValue), pegOffsetType: Keyword.get(opts, :pegOffsetType), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec order_amend_keep_priority_v3(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Order Amend Keep Priority
  Method: PUT
  Path: /api/v3/order/amend/keepPriority
  Requires signature: true
  Required: symbol, newQty
  Optional: orderId, origClientOrderId, newClientOrderId, recvWindow
  """
  def order_amend_keep_priority_v3(client, symbol, newQty, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/api/v3/order/amend/keepPriority",
          query: [symbol: symbol, orderId: Keyword.get(opts, :orderId), origClientOrderId: Keyword.get(opts, :origClientOrderId), newClientOrderId: Keyword.get(opts, :newClientOrderId), newQty: newQty, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec cancel_an_existing_order_and_send_a_new_order_v3(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel an Existing Order and Send a New Order
  Method: POST
  Path: /api/v3/order/cancelReplace
  Requires signature: true
  Required: symbol, side, type, cancelReplaceMode
  Optional: timeInForce, quantity, quoteOrderQty, price, cancelNewClientOrderId, cancelOrigClientOrderId, cancelOrderId, newClientOrderId, strategyId, strategyType, stopPrice, trailingDelta, icebergQty, newOrderRespType, selfTradePreventionMode, cancelRestrictions, orderRateLimitExceededMode, pegPriceType, pegOffsetValue, pegOffsetType, recvWindow
  """
  def cancel_an_existing_order_and_send_a_new_order_v3(client, symbol, side, type, cancelReplaceMode, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/order/cancelReplace",
          query: [symbol: symbol, side: side, type: type, cancelReplaceMode: cancelReplaceMode, timeInForce: Keyword.get(opts, :timeInForce), quantity: Keyword.get(opts, :quantity), quoteOrderQty: Keyword.get(opts, :quoteOrderQty), price: Keyword.get(opts, :price), cancelNewClientOrderId: Keyword.get(opts, :cancelNewClientOrderId), cancelOrigClientOrderId: Keyword.get(opts, :cancelOrigClientOrderId), cancelOrderId: Keyword.get(opts, :cancelOrderId), newClientOrderId: Keyword.get(opts, :newClientOrderId), strategyId: Keyword.get(opts, :strategyId), strategyType: Keyword.get(opts, :strategyType), stopPrice: Keyword.get(opts, :stopPrice), trailingDelta: Keyword.get(opts, :trailingDelta), icebergQty: Keyword.get(opts, :icebergQty), newOrderRespType: Keyword.get(opts, :newOrderRespType), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), cancelRestrictions: Keyword.get(opts, :cancelRestrictions), orderRateLimitExceededMode: Keyword.get(opts, :orderRateLimitExceededMode), pegPriceType: Keyword.get(opts, :pegPriceType), pegOffsetValue: Keyword.get(opts, :pegOffsetValue), pegOffsetType: Keyword.get(opts, :pegOffsetType), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec new_oco_deprecated_v3(Binance.Client.t(), term(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  New OCO - Deprecated
  Method: POST
  Path: /api/v3/order/oco
  Requires signature: true
  Required: symbol, side, quantity, price, stopPrice
  Optional: listClientOrderId, limitClientOrderId, limitStrategyId, limitStrategyType, limitIcebergQty, trailingDelta, stopClientOrderId, stopStrategyId, stopStrategyType, stopLimitPrice, stopIcebergQty, stopLimitTimeInForce, newOrderRespType, selfTradePreventionMode, recvWindow
  """
  def new_oco_deprecated_v3(client, symbol, side, quantity, price, stopPrice, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/order/oco",
          query: [symbol: symbol, listClientOrderId: Keyword.get(opts, :listClientOrderId), side: side, quantity: quantity, limitClientOrderId: Keyword.get(opts, :limitClientOrderId), price: price, limitStrategyId: Keyword.get(opts, :limitStrategyId), limitStrategyType: Keyword.get(opts, :limitStrategyType), limitIcebergQty: Keyword.get(opts, :limitIcebergQty), trailingDelta: Keyword.get(opts, :trailingDelta), stopClientOrderId: Keyword.get(opts, :stopClientOrderId), stopPrice: stopPrice, stopStrategyId: Keyword.get(opts, :stopStrategyId), stopStrategyType: Keyword.get(opts, :stopStrategyType), stopLimitPrice: Keyword.get(opts, :stopLimitPrice), stopIcebergQty: Keyword.get(opts, :stopIcebergQty), stopLimitTimeInForce: Keyword.get(opts, :stopLimitTimeInForce), newOrderRespType: Keyword.get(opts, :newOrderRespType), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec test_new_order_v3(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Test new order
  Method: POST
  Path: /api/v3/order/test
  Requires signature: true
  Required: symbol, side, type
  Optional: computeCommissionRates, timeInForce, quantity, quoteOrderQty, price, newClientOrderId, strategyId, strategyType, stopPrice, trailingDelta, icebergQty, newOrderRespType, selfTradePreventionMode, pegPriceType, pegOffsetValue, pegOffsetType, recvWindow
  """
  def test_new_order_v3(client, symbol, side, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/order/test",
          query: [computeCommissionRates: Keyword.get(opts, :computeCommissionRates), symbol: symbol, side: side, type: type, timeInForce: Keyword.get(opts, :timeInForce), quantity: Keyword.get(opts, :quantity), quoteOrderQty: Keyword.get(opts, :quoteOrderQty), price: Keyword.get(opts, :price), newClientOrderId: Keyword.get(opts, :newClientOrderId), strategyId: Keyword.get(opts, :strategyId), strategyType: Keyword.get(opts, :strategyType), stopPrice: Keyword.get(opts, :stopPrice), trailingDelta: Keyword.get(opts, :trailingDelta), icebergQty: Keyword.get(opts, :icebergQty), newOrderRespType: Keyword.get(opts, :newOrderRespType), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), pegPriceType: Keyword.get(opts, :pegPriceType), pegOffsetValue: Keyword.get(opts, :pegOffsetValue), pegOffsetType: Keyword.get(opts, :pegOffsetType), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec cancel_order_list_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel Order list
  Method: DELETE
  Path: /api/v3/orderList
  Requires signature: true
  Required: symbol
  Optional: orderListId, listClientOrderId, newClientOrderId, recvWindow
  """
  def cancel_order_list_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/api/v3/orderList",
          query: [symbol: symbol, orderListId: Keyword.get(opts, :orderListId), listClientOrderId: Keyword.get(opts, :listClientOrderId), newClientOrderId: Keyword.get(opts, :newClientOrderId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec new_order_list_oco_v3(Binance.Client.t(), term(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  New Order list - OCO
  Method: POST
  Path: /api/v3/orderList/oco
  Requires signature: true
  Required: symbol, side, quantity, aboveType, belowType
  Optional: listClientOrderId, aboveClientOrderId, aboveIcebergQty, abovePrice, aboveStopPrice, aboveTrailingDelta, aboveTimeInForce, aboveStrategyId, aboveStrategyType, abovePegPriceType, abovePegOffsetType, abovePegOffsetValue, belowClientOrderId, belowIcebergQty, belowPrice, belowStopPrice, belowTrailingDelta, belowTimeInForce, belowStrategyId, belowStrategyType, belowPegPriceType, belowPegOffsetType, belowPegOffsetValue, newOrderRespType, selfTradePreventionMode, recvWindow
  """
  def new_order_list_oco_v3(client, symbol, side, quantity, aboveType, belowType, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/orderList/oco",
          query: [symbol: symbol, listClientOrderId: Keyword.get(opts, :listClientOrderId), side: side, quantity: quantity, aboveType: aboveType, aboveClientOrderId: Keyword.get(opts, :aboveClientOrderId), aboveIcebergQty: Keyword.get(opts, :aboveIcebergQty), abovePrice: Keyword.get(opts, :abovePrice), aboveStopPrice: Keyword.get(opts, :aboveStopPrice), aboveTrailingDelta: Keyword.get(opts, :aboveTrailingDelta), aboveTimeInForce: Keyword.get(opts, :aboveTimeInForce), aboveStrategyId: Keyword.get(opts, :aboveStrategyId), aboveStrategyType: Keyword.get(opts, :aboveStrategyType), abovePegPriceType: Keyword.get(opts, :abovePegPriceType), abovePegOffsetType: Keyword.get(opts, :abovePegOffsetType), abovePegOffsetValue: Keyword.get(opts, :abovePegOffsetValue), belowType: belowType, belowClientOrderId: Keyword.get(opts, :belowClientOrderId), belowIcebergQty: Keyword.get(opts, :belowIcebergQty), belowPrice: Keyword.get(opts, :belowPrice), belowStopPrice: Keyword.get(opts, :belowStopPrice), belowTrailingDelta: Keyword.get(opts, :belowTrailingDelta), belowTimeInForce: Keyword.get(opts, :belowTimeInForce), belowStrategyId: Keyword.get(opts, :belowStrategyId), belowStrategyType: Keyword.get(opts, :belowStrategyType), belowPegPriceType: Keyword.get(opts, :belowPegPriceType), belowPegOffsetType: Keyword.get(opts, :belowPegOffsetType), belowPegOffsetValue: Keyword.get(opts, :belowPegOffsetValue), newOrderRespType: Keyword.get(opts, :newOrderRespType), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec new_order_list_opo_v3(Binance.Client.t(), term(), term(), term(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  New Order List - OPO
  Method: POST
  Path: /api/v3/orderList/opo
  Requires signature: true
  Required: symbol, workingType, workingSide, workingPrice, workingQuantity, pendingType, pendingSide
  Optional: listClientOrderId, newOrderRespType, selfTradePreventionMode, workingClientOrderId, workingIcebergQty, workingTimeInForce, workingStrategyId, workingStrategyType, workingPegPriceType, workingPegOffsetType, workingPegOffsetValue, pendingClientOrderId, pendingPrice, pendingStopPrice, pendingTrailingDelta, pendingIcebergQty, pendingTimeInForce, pendingStrategyId, pendingStrategyType, pendingPegPriceType, pendingPegOffsetType, pendingPegOffsetValue, recvWindow
  """
  def new_order_list_opo_v3(client, symbol, workingType, workingSide, workingPrice, workingQuantity, pendingType, pendingSide, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/orderList/opo",
          query: [symbol: symbol, listClientOrderId: Keyword.get(opts, :listClientOrderId), newOrderRespType: Keyword.get(opts, :newOrderRespType), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), workingType: workingType, workingSide: workingSide, workingClientOrderId: Keyword.get(opts, :workingClientOrderId), workingPrice: workingPrice, workingQuantity: workingQuantity, workingIcebergQty: Keyword.get(opts, :workingIcebergQty), workingTimeInForce: Keyword.get(opts, :workingTimeInForce), workingStrategyId: Keyword.get(opts, :workingStrategyId), workingStrategyType: Keyword.get(opts, :workingStrategyType), workingPegPriceType: Keyword.get(opts, :workingPegPriceType), workingPegOffsetType: Keyword.get(opts, :workingPegOffsetType), workingPegOffsetValue: Keyword.get(opts, :workingPegOffsetValue), pendingType: pendingType, pendingSide: pendingSide, pendingClientOrderId: Keyword.get(opts, :pendingClientOrderId), pendingPrice: Keyword.get(opts, :pendingPrice), pendingStopPrice: Keyword.get(opts, :pendingStopPrice), pendingTrailingDelta: Keyword.get(opts, :pendingTrailingDelta), pendingIcebergQty: Keyword.get(opts, :pendingIcebergQty), pendingTimeInForce: Keyword.get(opts, :pendingTimeInForce), pendingStrategyId: Keyword.get(opts, :pendingStrategyId), pendingStrategyType: Keyword.get(opts, :pendingStrategyType), pendingPegPriceType: Keyword.get(opts, :pendingPegPriceType), pendingPegOffsetType: Keyword.get(opts, :pendingPegOffsetType), pendingPegOffsetValue: Keyword.get(opts, :pendingPegOffsetValue), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec new_order_list_opoco_v3(Binance.Client.t(), term(), term(), term(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  New Order List - OPOCO
  Method: POST
  Path: /api/v3/orderList/opoco
  Requires signature: true
  Required: symbol, workingType, workingSide, workingPrice, workingQuantity, pendingSide, pendingAboveType
  Optional: listClientOrderId, newOrderRespType, selfTradePreventionMode, workingClientOrderId, workingIcebergQty, workingTimeInForce, workingStrategyId, workingStrategyType, workingPegPriceType, workingPegOffsetType, workingPegOffsetValue, pendingAboveClientOrderId, pendingAbovePrice, pendingAboveStopPrice, pendingAboveTrailingDelta, pendingAboveIcebergQty, pendingAboveTimeInForce, pendingAboveStrategyId, pendingAboveStrategyType, pendingAbovePegPriceType, pendingAbovePegOffsetType, pendingAbovePegOffsetValue, pendingBelowType, pendingBelowClientOrderId, pendingBelowPrice, pendingBelowStopPrice, pendingBelowTrailingDelta, pendingBelowIcebergQty, pendingBelowTimeInForce, pendingBelowStrategyId, pendingBelowStrategyType, pendingBelowPegPriceType, pendingBelowPegOffsetType, pendingBelowPegOffsetValue, recvWindow
  """
  def new_order_list_opoco_v3(client, symbol, workingType, workingSide, workingPrice, workingQuantity, pendingSide, pendingAboveType, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/orderList/opoco",
          query: [symbol: symbol, listClientOrderId: Keyword.get(opts, :listClientOrderId), newOrderRespType: Keyword.get(opts, :newOrderRespType), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), workingType: workingType, workingSide: workingSide, workingClientOrderId: Keyword.get(opts, :workingClientOrderId), workingPrice: workingPrice, workingQuantity: workingQuantity, workingIcebergQty: Keyword.get(opts, :workingIcebergQty), workingTimeInForce: Keyword.get(opts, :workingTimeInForce), workingStrategyId: Keyword.get(opts, :workingStrategyId), workingStrategyType: Keyword.get(opts, :workingStrategyType), workingPegPriceType: Keyword.get(opts, :workingPegPriceType), workingPegOffsetType: Keyword.get(opts, :workingPegOffsetType), workingPegOffsetValue: Keyword.get(opts, :workingPegOffsetValue), pendingSide: pendingSide, pendingAboveType: pendingAboveType, pendingAboveClientOrderId: Keyword.get(opts, :pendingAboveClientOrderId), pendingAbovePrice: Keyword.get(opts, :pendingAbovePrice), pendingAboveStopPrice: Keyword.get(opts, :pendingAboveStopPrice), pendingAboveTrailingDelta: Keyword.get(opts, :pendingAboveTrailingDelta), pendingAboveIcebergQty: Keyword.get(opts, :pendingAboveIcebergQty), pendingAboveTimeInForce: Keyword.get(opts, :pendingAboveTimeInForce), pendingAboveStrategyId: Keyword.get(opts, :pendingAboveStrategyId), pendingAboveStrategyType: Keyword.get(opts, :pendingAboveStrategyType), pendingAbovePegPriceType: Keyword.get(opts, :pendingAbovePegPriceType), pendingAbovePegOffsetType: Keyword.get(opts, :pendingAbovePegOffsetType), pendingAbovePegOffsetValue: Keyword.get(opts, :pendingAbovePegOffsetValue), pendingBelowType: Keyword.get(opts, :pendingBelowType), pendingBelowClientOrderId: Keyword.get(opts, :pendingBelowClientOrderId), pendingBelowPrice: Keyword.get(opts, :pendingBelowPrice), pendingBelowStopPrice: Keyword.get(opts, :pendingBelowStopPrice), pendingBelowTrailingDelta: Keyword.get(opts, :pendingBelowTrailingDelta), pendingBelowIcebergQty: Keyword.get(opts, :pendingBelowIcebergQty), pendingBelowTimeInForce: Keyword.get(opts, :pendingBelowTimeInForce), pendingBelowStrategyId: Keyword.get(opts, :pendingBelowStrategyId), pendingBelowStrategyType: Keyword.get(opts, :pendingBelowStrategyType), pendingBelowPegPriceType: Keyword.get(opts, :pendingBelowPegPriceType), pendingBelowPegOffsetType: Keyword.get(opts, :pendingBelowPegOffsetType), pendingBelowPegOffsetValue: Keyword.get(opts, :pendingBelowPegOffsetValue), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec new_order_list_oto_v3(Binance.Client.t(), term(), term(), term(), term(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  New Order list - OTO
  Method: POST
  Path: /api/v3/orderList/oto
  Requires signature: true
  Required: symbol, workingType, workingSide, workingPrice, workingQuantity, pendingType, pendingSide, pendingQuantity
  Optional: listClientOrderId, newOrderRespType, selfTradePreventionMode, workingClientOrderId, workingIcebergQty, workingTimeInForce, workingStrategyId, workingStrategyType, workingPegPriceType, workingPegOffsetType, workingPegOffsetValue, pendingClientOrderId, pendingPrice, pendingStopPrice, pendingTrailingDelta, pendingIcebergQty, pendingTimeInForce, pendingStrategyId, pendingStrategyType, pendingPegPriceType, pendingPegOffsetType, pendingPegOffsetValue, recvWindow
  """
  def new_order_list_oto_v3(client, symbol, workingType, workingSide, workingPrice, workingQuantity, pendingType, pendingSide, pendingQuantity, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/orderList/oto",
          query: [symbol: symbol, listClientOrderId: Keyword.get(opts, :listClientOrderId), newOrderRespType: Keyword.get(opts, :newOrderRespType), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), workingType: workingType, workingSide: workingSide, workingClientOrderId: Keyword.get(opts, :workingClientOrderId), workingPrice: workingPrice, workingQuantity: workingQuantity, workingIcebergQty: Keyword.get(opts, :workingIcebergQty), workingTimeInForce: Keyword.get(opts, :workingTimeInForce), workingStrategyId: Keyword.get(opts, :workingStrategyId), workingStrategyType: Keyword.get(opts, :workingStrategyType), workingPegPriceType: Keyword.get(opts, :workingPegPriceType), workingPegOffsetType: Keyword.get(opts, :workingPegOffsetType), workingPegOffsetValue: Keyword.get(opts, :workingPegOffsetValue), pendingType: pendingType, pendingSide: pendingSide, pendingClientOrderId: Keyword.get(opts, :pendingClientOrderId), pendingPrice: Keyword.get(opts, :pendingPrice), pendingStopPrice: Keyword.get(opts, :pendingStopPrice), pendingTrailingDelta: Keyword.get(opts, :pendingTrailingDelta), pendingQuantity: pendingQuantity, pendingIcebergQty: Keyword.get(opts, :pendingIcebergQty), pendingTimeInForce: Keyword.get(opts, :pendingTimeInForce), pendingStrategyId: Keyword.get(opts, :pendingStrategyId), pendingStrategyType: Keyword.get(opts, :pendingStrategyType), pendingPegPriceType: Keyword.get(opts, :pendingPegPriceType), pendingPegOffsetType: Keyword.get(opts, :pendingPegOffsetType), pendingPegOffsetValue: Keyword.get(opts, :pendingPegOffsetValue), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec new_order_list_otoco_v3(Binance.Client.t(), term(), term(), term(), term(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  New Order list - OTOCO
  Method: POST
  Path: /api/v3/orderList/otoco
  Requires signature: true
  Required: symbol, workingType, workingSide, workingPrice, workingQuantity, pendingSide, pendingQuantity, pendingAboveType
  Optional: listClientOrderId, newOrderRespType, selfTradePreventionMode, workingClientOrderId, workingIcebergQty, workingTimeInForce, workingStrategyId, workingStrategyType, workingPegPriceType, workingPegOffsetType, workingPegOffsetValue, pendingAboveClientOrderId, pendingAbovePrice, pendingAboveStopPrice, pendingAboveTrailingDelta, pendingAboveIcebergQty, pendingAboveTimeInForce, pendingAboveStrategyId, pendingAboveStrategyType, pendingAbovePegPriceType, pendingAbovePegOffsetType, pendingAbovePegOffsetValue, pendingBelowType, pendingBelowClientOrderId, pendingBelowPrice, pendingBelowStopPrice, pendingBelowTrailingDelta, pendingBelowIcebergQty, pendingBelowTimeInForce, pendingBelowStrategyId, pendingBelowStrategyType, pendingBelowPegPriceType, pendingBelowPegOffsetType, pendingBelowPegOffsetValue, recvWindow
  """
  def new_order_list_otoco_v3(client, symbol, workingType, workingSide, workingPrice, workingQuantity, pendingSide, pendingQuantity, pendingAboveType, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/orderList/otoco",
          query: [symbol: symbol, listClientOrderId: Keyword.get(opts, :listClientOrderId), newOrderRespType: Keyword.get(opts, :newOrderRespType), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), workingType: workingType, workingSide: workingSide, workingClientOrderId: Keyword.get(opts, :workingClientOrderId), workingPrice: workingPrice, workingQuantity: workingQuantity, workingIcebergQty: Keyword.get(opts, :workingIcebergQty), workingTimeInForce: Keyword.get(opts, :workingTimeInForce), workingStrategyId: Keyword.get(opts, :workingStrategyId), workingStrategyType: Keyword.get(opts, :workingStrategyType), workingPegPriceType: Keyword.get(opts, :workingPegPriceType), workingPegOffsetType: Keyword.get(opts, :workingPegOffsetType), workingPegOffsetValue: Keyword.get(opts, :workingPegOffsetValue), pendingSide: pendingSide, pendingQuantity: pendingQuantity, pendingAboveType: pendingAboveType, pendingAboveClientOrderId: Keyword.get(opts, :pendingAboveClientOrderId), pendingAbovePrice: Keyword.get(opts, :pendingAbovePrice), pendingAboveStopPrice: Keyword.get(opts, :pendingAboveStopPrice), pendingAboveTrailingDelta: Keyword.get(opts, :pendingAboveTrailingDelta), pendingAboveIcebergQty: Keyword.get(opts, :pendingAboveIcebergQty), pendingAboveTimeInForce: Keyword.get(opts, :pendingAboveTimeInForce), pendingAboveStrategyId: Keyword.get(opts, :pendingAboveStrategyId), pendingAboveStrategyType: Keyword.get(opts, :pendingAboveStrategyType), pendingAbovePegPriceType: Keyword.get(opts, :pendingAbovePegPriceType), pendingAbovePegOffsetType: Keyword.get(opts, :pendingAbovePegOffsetType), pendingAbovePegOffsetValue: Keyword.get(opts, :pendingAbovePegOffsetValue), pendingBelowType: Keyword.get(opts, :pendingBelowType), pendingBelowClientOrderId: Keyword.get(opts, :pendingBelowClientOrderId), pendingBelowPrice: Keyword.get(opts, :pendingBelowPrice), pendingBelowStopPrice: Keyword.get(opts, :pendingBelowStopPrice), pendingBelowTrailingDelta: Keyword.get(opts, :pendingBelowTrailingDelta), pendingBelowIcebergQty: Keyword.get(opts, :pendingBelowIcebergQty), pendingBelowTimeInForce: Keyword.get(opts, :pendingBelowTimeInForce), pendingBelowStrategyId: Keyword.get(opts, :pendingBelowStrategyId), pendingBelowStrategyType: Keyword.get(opts, :pendingBelowStrategyType), pendingBelowPegPriceType: Keyword.get(opts, :pendingBelowPegPriceType), pendingBelowPegOffsetType: Keyword.get(opts, :pendingBelowPegOffsetType), pendingBelowPegOffsetValue: Keyword.get(opts, :pendingBelowPegOffsetValue), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec new_order_using_sor_v3(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  New order using SOR
  Method: POST
  Path: /api/v3/sor/order
  Requires signature: true
  Required: symbol, side, type, quantity
  Optional: timeInForce, price, newClientOrderId, strategyId, strategyType, icebergQty, newOrderRespType, selfTradePreventionMode, recvWindow
  """
  def new_order_using_sor_v3(client, symbol, side, type, quantity, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/sor/order",
          query: [symbol: symbol, side: side, type: type, timeInForce: Keyword.get(opts, :timeInForce), quantity: quantity, price: Keyword.get(opts, :price), newClientOrderId: Keyword.get(opts, :newClientOrderId), strategyId: Keyword.get(opts, :strategyId), strategyType: Keyword.get(opts, :strategyType), icebergQty: Keyword.get(opts, :icebergQty), newOrderRespType: Keyword.get(opts, :newOrderRespType), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec test_new_order_using_sor_v3(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Test new order using SOR
  Method: POST
  Path: /api/v3/sor/order/test
  Requires signature: true
  Required: symbol, side, type, quantity
  Optional: computeCommissionRates, timeInForce, price, newClientOrderId, strategyId, strategyType, icebergQty, newOrderRespType, selfTradePreventionMode, recvWindow
  """
  def test_new_order_using_sor_v3(client, symbol, side, type, quantity, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/api/v3/sor/order/test",
          query: [computeCommissionRates: Keyword.get(opts, :computeCommissionRates), symbol: symbol, side: side, type: type, timeInForce: Keyword.get(opts, :timeInForce), quantity: quantity, price: Keyword.get(opts, :price), newClientOrderId: Keyword.get(opts, :newClientOrderId), strategyId: Keyword.get(opts, :strategyId), strategyType: Keyword.get(opts, :strategyType), icebergQty: Keyword.get(opts, :icebergQty), newOrderRespType: Keyword.get(opts, :newOrderRespType), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end