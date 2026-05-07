defmodule Binance.API.DualInvestment.MarketData do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Get Dual Investment product list
  Method: GET
  Path: /sapi/v1/dci/product/list
  Requires signature: true
  """
  def get_dual_investment_product_list_v1(client, optionType, exercisedCoin, investCoin, pageSize: pageSize, pageIndex: pageIndex, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/dci/product/list",
          query: [optionType: optionType, exercisedCoin: exercisedCoin, investCoin: investCoin, pageSize: pageSize, pageIndex: pageIndex, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end