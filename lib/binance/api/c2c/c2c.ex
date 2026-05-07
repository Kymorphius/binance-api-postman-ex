defmodule Binance.API.C2c.C2c do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Get C2C Trade History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/c2c/orderMatch/listUserOrderHistory
  Requires signature: true
  """
  def get_c2c_trade_history_v1(client, tradeType: tradeType, startTimestamp: startTimestamp, endTimestamp: endTimestamp, page: page, rows: rows, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/c2c/orderMatch/listUserOrderHistory",
          query: [tradeType: tradeType, startTimestamp: startTimestamp, endTimestamp: endTimestamp, page: page, rows: rows, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end