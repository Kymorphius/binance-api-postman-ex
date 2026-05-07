defmodule Binance.API.SubAccount.ApiManagement do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Get IP Restriction for a Sub-account API Key
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/subAccountApi/ipRestriction
  Requires signature: true
  """
  def get_ip_restriction_for_a_sub_account_api_key_v1(client, email, subAccountApiKey, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/subAccountApi/ipRestriction",
          query: [email: email, subAccountApiKey: subAccountApiKey, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Delete IP List For a Sub-account API Key
  Variant: User Data
  Tags: for_master_account, user_data
  Method: DELETE
  Path: /sapi/v1/sub-account/subAccountApi/ipRestriction/ipList
  Requires signature: true
  """
  def delete_ip_list_for_a_sub_account_api_key_v1(client, email, subAccountApiKey, ipAddress, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/sub-account/subAccountApi/ipRestriction/ipList",
          query: [email: email, subAccountApiKey: subAccountApiKey, ipAddress: ipAddress, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Add IP Restriction for Sub-Account API key
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v2/sub-account/subAccountApi/ipRestriction
  Requires signature: true
  """
  def add_ip_restriction_for_sub_account_api_key_v2(client, email, subAccountApiKey, status, ipAddress: ipAddress, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v2/sub-account/subAccountApi/ipRestriction",
          query: [email: email, subAccountApiKey: subAccountApiKey, status: status, ipAddress: ipAddress, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end