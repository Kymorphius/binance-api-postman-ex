defmodule Binance.API.MarginTrading.RiskDataStream do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Close User Data Stream
  Variant: User Stream
  Tags: user_stream
  Method: DELETE
  Path: /sapi/v1/margin/listen-key
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
          url: "/sapi/v1/margin/listen-key",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Keepalive User Data Stream
  Variant: User Stream
  Tags: user_stream
  Method: PUT
  Path: /sapi/v1/margin/listen-key
  Requires signature: false
  """
  def keepalive_user_data_stream_v1(client, listenKey) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "PUT",
          base_url: base_url,
          url: "/sapi/v1/margin/listen-key",
          query: [listenKey: listenKey],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Start User Data Stream
  Variant: User Stream
  Tags: user_stream
  Method: POST
  Path: /sapi/v1/margin/listen-key
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
          url: "/sapi/v1/margin/listen-key",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end