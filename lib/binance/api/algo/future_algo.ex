defmodule Binance.API.Algo.FutureAlgo do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec query_historical_algo_orders_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Historical Algo Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/algo/futures/historicalOrders
  Requires signature: true
  Optional: symbol, side, startTime, endTime, page, pageSize, recvWindow
  """
  def query_historical_algo_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/algo/futures/historicalOrders",
          query: [symbol: Keyword.get(opts, :symbol), side: Keyword.get(opts, :side), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), page: Keyword.get(opts, :page), pageSize: Keyword.get(opts, :pageSize), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec time_weighted_average_price_new_order_v1(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Time-Weighted Average Price New Order
  Variant: Trade
  Tags: twap, trade
  Method: POST
  Path: /sapi/v1/algo/futures/newOrderTwap
  Requires signature: true
  Required: symbol, side, quantity, duration
  Optional: positionSide, clientAlgoId, reduceOnly, limitPrice, recvWindow
  """
  def time_weighted_average_price_new_order_v1(client, symbol, side, quantity, duration, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/algo/futures/newOrderTwap",
          query: [symbol: symbol, side: side, positionSide: Keyword.get(opts, :positionSide), quantity: quantity, duration: duration, clientAlgoId: Keyword.get(opts, :clientAlgoId), reduceOnly: Keyword.get(opts, :reduceOnly), limitPrice: Keyword.get(opts, :limitPrice), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec volume_participation_new_order_v1(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Volume Participation New Order
  Variant: Trade
  Tags: vp, trade
  Method: POST
  Path: /sapi/v1/algo/futures/newOrderVp
  Requires signature: true
  Required: symbol, side, quantity, urgency
  Optional: positionSide, clientAlgoId, reduceOnly, limitPrice, recvWindow
  """
  def volume_participation_new_order_v1(client, symbol, side, quantity, urgency, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/algo/futures/newOrderVp",
          query: [symbol: symbol, side: side, positionSide: Keyword.get(opts, :positionSide), quantity: quantity, urgency: urgency, clientAlgoId: Keyword.get(opts, :clientAlgoId), reduceOnly: Keyword.get(opts, :reduceOnly), limitPrice: Keyword.get(opts, :limitPrice), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_current_algo_open_orders_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Current Algo Open Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/algo/futures/openOrders
  Requires signature: true
  Optional: recvWindow
  """
  def query_current_algo_open_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/algo/futures/openOrders",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec cancel_algo_order_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel Algo Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /sapi/v1/algo/futures/order
  Requires signature: true
  Required: algoId
  Optional: recvWindow
  """
  def cancel_algo_order_v1(client, algoId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/algo/futures/order",
          query: [algoId: algoId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_sub_orders_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Sub Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/algo/futures/subOrders
  Requires signature: true
  Required: algoId
  Optional: page, pageSize, recvWindow
  """
  def query_sub_orders_v1(client, algoId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/algo/futures/subOrders",
          query: [algoId: algoId, page: Keyword.get(opts, :page), pageSize: Keyword.get(opts, :pageSize), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end