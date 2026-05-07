defmodule Binance.API.SubAccount.ApiManagement do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_ip_restriction_for_a_sub_account_api_key_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get IP Restriction for a Sub-account API Key
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/subAccountApi/ipRestriction
  Requires signature: true
  Required: email, subAccountApiKey
  Optional: recvWindow
  """
  def get_ip_restriction_for_a_sub_account_api_key_v1(client, email, subAccountApiKey, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/subAccountApi/ipRestriction",
          query: [email: email, subAccountApiKey: subAccountApiKey, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec delete_ip_list_for_a_sub_account_api_key_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Delete IP List For a Sub-account API Key
  Variant: User Data
  Tags: for_master_account, user_data
  Method: DELETE
  Path: /sapi/v1/sub-account/subAccountApi/ipRestriction/ipList
  Requires signature: true
  Required: email, subAccountApiKey, ipAddress
  Optional: recvWindow
  """
  def delete_ip_list_for_a_sub_account_api_key_v1(client, email, subAccountApiKey, ipAddress, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/sub-account/subAccountApi/ipRestriction/ipList",
          query: [email: email, subAccountApiKey: subAccountApiKey, ipAddress: ipAddress, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec add_ip_restriction_for_sub_account_api_key_v2(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Add IP Restriction for Sub-Account API key
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v2/sub-account/subAccountApi/ipRestriction
  Requires signature: true
  Required: email, subAccountApiKey, status
  Optional: ipAddress, recvWindow
  """
  def add_ip_restriction_for_sub_account_api_key_v2(client, email, subAccountApiKey, status, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v2/sub-account/subAccountApi/ipRestriction",
          query: [email: email, subAccountApiKey: subAccountApiKey, status: status, ipAddress: Keyword.get(opts, :ipAddress), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end