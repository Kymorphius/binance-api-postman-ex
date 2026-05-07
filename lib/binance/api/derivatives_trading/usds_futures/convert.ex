defmodule Binance.API.DerivativesTrading.UsdsFutures.Convert do
  @moduledoc false

  @base_urls %{prod_url: "https://fapi.binance.com", testnet_url: "https://testnet.binancefuture.com", demo_url: "https://demo-fapi.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec accept_the_offered_quote_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Accept the offered quote
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /fapi/v1/convert/acceptQuote
  Requires signature: true
  Required: quoteId
  Optional: recvWindow
  """
  def accept_the_offered_quote_v1(client, quoteId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/convert/acceptQuote",
          query: [quoteId: quoteId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec list_all_convert_pairs_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  List All Convert Pairs
  Method: GET
  Path: /fapi/v1/convert/exchangeInfo
  Requires signature: false
  Optional: fromAsset, toAsset
  """
  def list_all_convert_pairs_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/convert/exchangeInfo",
          query: [fromAsset: Keyword.get(opts, :fromAsset), toAsset: Keyword.get(opts, :toAsset)],
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
  Path: /fapi/v1/convert/getQuote
  Requires signature: true
  Required: fromAsset, toAsset
  Optional: fromAmount, toAmount, validTime, recvWindow
  """
  def send_quote_request_v1(client, fromAsset, toAsset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/convert/getQuote",
          query: [fromAsset: fromAsset, toAsset: toAsset, fromAmount: Keyword.get(opts, :fromAmount), toAmount: Keyword.get(opts, :toAmount), validTime: Keyword.get(opts, :validTime), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
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
  Path: /fapi/v1/convert/orderStatus
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
          url: "/fapi/v1/convert/orderStatus",
          query: [orderId: Keyword.get(opts, :orderId), quoteId: Keyword.get(opts, :quoteId), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end