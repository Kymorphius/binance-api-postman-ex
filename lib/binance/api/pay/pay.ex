defmodule Binance.API.Pay.Pay do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_pay_trade_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Pay Trade History
  Method: GET
  Path: /sapi/v1/pay/transactions
  Requires signature: true
  Optional: startTime, endTime, limit, recvWindow
  """
  def get_pay_trade_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/pay/transactions",
          query: [startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end