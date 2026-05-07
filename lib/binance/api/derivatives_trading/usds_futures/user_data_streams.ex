defmodule Binance.API.DerivativesTrading.UsdsFutures.UserDataStreams do
  @moduledoc false

  @base_urls %{prod_url: "https://fapi.binance.com", testnet_url: "https://testnet.binancefuture.com", demo_url: "https://demo-fapi.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec close_user_data_stream_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Close User Data Stream
  Variant: User Stream
  Tags: user_stream
  Method: DELETE
  Path: /fapi/v1/listenKey
  Requires signature: false
  """
  def close_user_data_stream_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "DELETE",
          base_url: base_url,
          url: "/fapi/v1/listenKey",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec keepalive_user_data_stream_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Keepalive User Data Stream
  Variant: User Stream
  Tags: user_stream
  Method: PUT
  Path: /fapi/v1/listenKey
  Requires signature: false
  """
  def keepalive_user_data_stream_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "PUT",
          base_url: base_url,
          url: "/fapi/v1/listenKey",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec start_user_data_stream_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Start User Data Stream
  Variant: User Stream
  Tags: user_stream
  Method: POST
  Path: /fapi/v1/listenKey
  Requires signature: false
  """
  def start_user_data_stream_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/listenKey",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end