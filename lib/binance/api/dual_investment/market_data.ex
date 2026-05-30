defmodule Binance.API.DualInvestment.MarketData do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_dual_investment_product_list_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Dual Investment product list
  Method: GET
  Path: /sapi/v1/dci/product/list
  Requires signature: true
  Required: optionType, exercisedCoin, investCoin
  Optional: pageSize, pageIndex, recvWindow
  """
  def get_dual_investment_product_list_v1(
        client,
        optionType,
        exercisedCoin,
        investCoin,
        opts \\ []
      ) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/dci/product/list",
          query: [
            optionType: optionType,
            exercisedCoin: exercisedCoin,
            investCoin: investCoin,
            pageSize: Keyword.get(opts, :pageSize),
            pageIndex: Keyword.get(opts, :pageIndex),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end
end
