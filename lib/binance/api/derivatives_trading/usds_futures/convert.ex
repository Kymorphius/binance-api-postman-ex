defmodule Binance.API.DerivativesTrading.UsdsFutures.Convert do
  @moduledoc false

  @base_urls %{prod_url: "https://fapi.binance.com", testnet_url: "https://testnet.binancefuture.com", demo_url: "https://demo-fapi.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Accept the offered quote
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /fapi/v1/convert/acceptQuote
  Requires signature: true
  """
  def accept_the_offered_quote_v1(client, quoteId, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/convert/acceptQuote",
          query: [quoteId: quoteId, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  List All Convert Pairs
  Method: GET
  Path: /fapi/v1/convert/exchangeInfo
  Requires signature: false
  """
  def list_all_convert_pairs_v1(client, fromAsset: fromAsset, toAsset: toAsset) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/convert/exchangeInfo",
          query: [fromAsset: fromAsset, toAsset: toAsset],
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
  Path: /fapi/v1/convert/getQuote
  Requires signature: true
  """
  def send_quote_request_v1(client, fromAsset, toAsset, fromAmount: fromAmount, toAmount: toAmount, validTime: validTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/convert/getQuote",
          query: [fromAsset: fromAsset, toAsset: toAsset, fromAmount: fromAmount, toAmount: toAmount, validTime: validTime, recvWindow: recvWindow, timestamp: nil],
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
  Path: /fapi/v1/convert/orderStatus
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
          url: "/fapi/v1/convert/orderStatus",
          query: [orderId: orderId, quoteId: quoteId, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end