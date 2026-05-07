defmodule Binance.API.Algo.FutureAlgo do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Query Historical Algo Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/algo/futures/historicalOrders
  Requires signature: true
  """
  def query_historical_algo_orders_v1(client, symbol: symbol, side: side, startTime: startTime, endTime: endTime, page: page, pageSize: pageSize, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/algo/futures/historicalOrders",
          query: [symbol: symbol, side: side, startTime: startTime, endTime: endTime, page: page, pageSize: pageSize, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Time-Weighted Average Price New Order
  Variant: Trade
  Tags: twap, trade
  Method: POST
  Path: /sapi/v1/algo/futures/newOrderTwap
  Requires signature: true
  """
  def time_weighted_average_price_new_order_v1(client, symbol, side, quantity, duration, positionSide: positionSide, clientAlgoId: clientAlgoId, reduceOnly: reduceOnly, limitPrice: limitPrice, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/algo/futures/newOrderTwap",
          query: [symbol: symbol, side: side, positionSide: positionSide, quantity: quantity, duration: duration, clientAlgoId: clientAlgoId, reduceOnly: reduceOnly, limitPrice: limitPrice, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Volume Participation New Order
  Variant: Trade
  Tags: vp, trade
  Method: POST
  Path: /sapi/v1/algo/futures/newOrderVp
  Requires signature: true
  """
  def volume_participation_new_order_v1(client, symbol, side, quantity, urgency, positionSide: positionSide, clientAlgoId: clientAlgoId, reduceOnly: reduceOnly, limitPrice: limitPrice, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/algo/futures/newOrderVp",
          query: [symbol: symbol, side: side, positionSide: positionSide, quantity: quantity, urgency: urgency, clientAlgoId: clientAlgoId, reduceOnly: reduceOnly, limitPrice: limitPrice, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Current Algo Open Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/algo/futures/openOrders
  Requires signature: true
  """
  def query_current_algo_open_orders_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/algo/futures/openOrders",
          query: [recvWindow: recvWindow, timestamp: nil],
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
  Path: /sapi/v1/algo/futures/order
  Requires signature: true
  """
  def cancel_algo_order_v1(client, algoId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/algo/futures/order",
          query: [algoId: algoId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Sub Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/algo/futures/subOrders
  Requires signature: true
  """
  def query_sub_orders_v1(client, algoId, page: page, pageSize: pageSize, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/algo/futures/subOrders",
          query: [algoId: algoId, page: page, pageSize: pageSize, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end