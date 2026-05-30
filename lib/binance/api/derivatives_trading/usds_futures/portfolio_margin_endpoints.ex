defmodule Binance.API.DerivativesTrading.UsdsFutures.PortfolioMarginEndpoints do
  @moduledoc false

  @base_urls %{
    prod_url: "https://fapi.binance.com",
    testnet_url: "https://testnet.binancefuture.com",
    demo_url: "https://demo-fapi.binance.com"
  }

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec classic_portfolio_margin_account_information_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Classic Portfolio Margin Account Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/pmAccountInfo
  Requires signature: true
  Required: asset
  Optional: recvWindow
  """
  def classic_portfolio_margin_account_information_v1(client, asset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/pmAccountInfo",
          query: [asset: asset, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end
end
