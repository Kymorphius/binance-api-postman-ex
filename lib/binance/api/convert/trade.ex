defmodule Binance.API.Convert.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec accept_quote_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Accept Quote
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/convert/acceptQuote
  Requires signature: true
  Required: quoteId
  Optional: recvWindow
  """
  def accept_quote_v1(client, quoteId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/convert/acceptQuote",
          query: [quoteId: quoteId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec send_quote_request_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Send Quote Request
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/convert/getQuote
  Requires signature: true
  Required: fromAsset, toAsset
  Optional: fromAmount, toAmount, walletType, validTime, recvWindow
  """
  def send_quote_request_v1(client, fromAsset, toAsset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/convert/getQuote",
          query: [fromAsset: fromAsset, toAsset: toAsset, fromAmount: Keyword.get(opts, :fromAmount), toAmount: Keyword.get(opts, :toAmount), walletType: Keyword.get(opts, :walletType), validTime: Keyword.get(opts, :validTime), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec cancel_limit_order_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel limit order
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/convert/limit/cancelOrder
  Requires signature: true
  Required: orderId
  Optional: recvWindow
  """
  def cancel_limit_order_v1(client, orderId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/convert/limit/cancelOrder",
          query: [orderId: orderId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec place_limit_order_v1(Binance.Client.t(), term(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Place limit order
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/convert/limit/placeOrder
  Requires signature: true
  Required: baseAsset, quoteAsset, limitPrice, side, expiredType
  Optional: baseAmount, quoteAmount, walletType, recvWindow
  """
  def place_limit_order_v1(client, baseAsset, quoteAsset, limitPrice, side, expiredType, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/convert/limit/placeOrder",
          query: [baseAsset: baseAsset, quoteAsset: quoteAsset, limitPrice: limitPrice, baseAmount: Keyword.get(opts, :baseAmount), quoteAmount: Keyword.get(opts, :quoteAmount), side: side, walletType: Keyword.get(opts, :walletType), expiredType: expiredType, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_limit_open_orders_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query limit open orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/convert/limit/queryOpenOrders
  Requires signature: true
  Optional: recvWindow
  """
  def query_limit_open_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/convert/limit/queryOpenOrders",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec order_status_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Order status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/convert/orderStatus
  Requires signature: true
  Optional: orderId, quoteId
  """
  def order_status_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/convert/orderStatus",
          query: [orderId: Keyword.get(opts, :orderId), quoteId: Keyword.get(opts, :quoteId), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_convert_trade_history_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Convert Trade History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/convert/tradeFlow
  Requires signature: true
  Required: startTime, endTime
  Optional: limit, recvWindow
  """
  def get_convert_trade_history_v1(client, startTime, endTime, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/convert/tradeFlow",
          query: [startTime: startTime, endTime: endTime, limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end