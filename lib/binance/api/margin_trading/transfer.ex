defmodule Binance.API.MarginTrading.Transfer do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Query Max Transfer-Out Amount
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/maxTransferable
  Requires signature: true
  """
  def query_max_transfer_out_amount_v1(client, asset, isolatedSymbol: isolatedSymbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/maxTransferable",
          query: [asset: asset, isolatedSymbol: isolatedSymbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Cross Margin Transfer History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/transfer
  Requires signature: true
  """
  def get_cross_margin_transfer_history_v1(client, asset: asset, type: type, startTime: startTime, endTime: endTime, current: current, size: size, isolatedSymbol: isolatedSymbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/transfer",
          query: [asset: asset, type: type, startTime: startTime, endTime: endTime, current: current, size: size, isolatedSymbol: isolatedSymbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end