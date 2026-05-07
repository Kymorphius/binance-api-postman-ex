defmodule Binance.API.Convert.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Accept Quote
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/convert/acceptQuote
  Requires signature: true
  """
  def accept_quote_v1(client, quoteId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/convert/acceptQuote",
          query: [quoteId: quoteId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Send Quote Request
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/convert/getQuote
  Requires signature: true
  """
  def send_quote_request_v1(client, fromAsset, toAsset, fromAmount: fromAmount, toAmount: toAmount, walletType: walletType, validTime: validTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/convert/getQuote",
          query: [fromAsset: fromAsset, toAsset: toAsset, fromAmount: fromAmount, toAmount: toAmount, walletType: walletType, validTime: validTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Cancel limit order
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/convert/limit/cancelOrder
  Requires signature: true
  """
  def cancel_limit_order_v1(client, orderId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/convert/limit/cancelOrder",
          query: [orderId: orderId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Place limit order
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/convert/limit/placeOrder
  Requires signature: true
  """
  def place_limit_order_v1(client, baseAsset, quoteAsset, limitPrice, side, expiredType, baseAmount: baseAmount, quoteAmount: quoteAmount, walletType: walletType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/convert/limit/placeOrder",
          query: [baseAsset: baseAsset, quoteAsset: quoteAsset, limitPrice: limitPrice, baseAmount: baseAmount, quoteAmount: quoteAmount, side: side, walletType: walletType, expiredType: expiredType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query limit open orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/convert/limit/queryOpenOrders
  Requires signature: true
  """
  def query_limit_open_orders_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/convert/limit/queryOpenOrders",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Order status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/convert/orderStatus
  Requires signature: true
  """
  def order_status_v1(client, orderId: orderId, quoteId: quoteId) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/convert/orderStatus",
          query: [orderId: orderId, quoteId: quoteId, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Convert Trade History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/convert/tradeFlow
  Requires signature: true
  """
  def get_convert_trade_history_v1(client, startTime, endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/convert/tradeFlow",
          query: [startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end