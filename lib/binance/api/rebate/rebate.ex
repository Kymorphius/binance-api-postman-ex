defmodule Binance.API.Rebate do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_spot_rebate_history_records_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Spot Rebate History Records
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/rebate/taxQuery
  Requires signature: true
  Optional: startTime, endTime, page, recvWindow
  """
  def get_spot_rebate_history_records_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/rebate/taxQuery",
          query: [
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            page: Keyword.get(opts, :page),
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
