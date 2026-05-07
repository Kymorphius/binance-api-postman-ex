defmodule Binance.API.DerivativesTrading.Options.Account do
  @moduledoc false

  @base_urls %{prod_url: "https://eapi.binance.com", testnet_url: "https://testnet.binancefuture.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec account_funding_flow_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Account Funding Flow
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/bill
  Requires signature: true
  Required: currency
  Optional: recordId, startTime, endTime, limit, recvWindow
  """
  def account_funding_flow_v1(client, currency, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/bill",
          query: [currency: currency, recordId: Keyword.get(opts, :recordId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec option_margin_account_information_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Option Margin Account Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/marginAccount
  Requires signature: true
  Optional: recvWindow
  """
  def option_margin_account_information_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/marginAccount",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end