defmodule Binance.API.Spot.General do
  @moduledoc false

  @base_urls %{
    prod_url: "https://api.binance.com",
    testnet_url: "https://testnet.binance.vision",
    demo_url: "https://demo-api.binance.com"
  }

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec exchange_information_v3(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Exchange information
  Method: GET
  Path: /api/v3/exchangeInfo
  Requires signature: false
  Optional: symbol, symbols, permissions, showPermissionSets, symbolStatus
  """
  def exchange_information_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/exchangeInfo",
          query: [
            symbol: Keyword.get(opts, :symbol),
            symbols: Keyword.get(opts, :symbols),
            permissions: Keyword.get(opts, :permissions),
            showPermissionSets: Keyword.get(opts, :showPermissionSets),
            symbolStatus: Keyword.get(opts, :symbolStatus)
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_execution_rules_v3(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Execution Rules
  Method: GET
  Path: /api/v3/executionRules
  Requires signature: false
  Optional: symbol, symbols, symbolStatus
  """
  def query_execution_rules_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/executionRules",
          query: [
            symbol: Keyword.get(opts, :symbol),
            symbols: Keyword.get(opts, :symbols),
            symbolStatus: Keyword.get(opts, :symbolStatus)
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec test_connectivity_v3(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Test connectivity
  Method: GET
  Path: /api/v3/ping
  Requires signature: false
  """
  def test_connectivity_v3(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/ping",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec check_server_time_v3(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Check server time
  Method: GET
  Path: /api/v3/time
  Requires signature: false
  """
  def check_server_time_v3(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/time",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end
end
