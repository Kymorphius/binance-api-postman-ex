defmodule Binance.API.GiftCard.MarketData do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Create a dual-token gift card
  Variant: Trade
  Tags: fixed_value_discount_feature, trade
  Method: POST
  Path: /sapi/v1/giftcard/buyCode
  Requires signature: true
  """
  def create_a_dual_token_gift_card_v1(client, baseToken, faceToken, baseTokenAmount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/giftcard/buyCode",
          query: [baseToken: baseToken, faceToken: faceToken, baseTokenAmount: baseTokenAmount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Fetch Token Limit
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/giftcard/buyCode/token-limit
  Requires signature: true
  """
  def fetch_token_limit_v1(client, baseToken, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/giftcard/buyCode/token-limit",
          query: [baseToken: baseToken, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Create a single-token gift card
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/giftcard/createCode
  Requires signature: true
  """
  def create_a_single_token_gift_card_v1(client, token, amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/giftcard/createCode",
          query: [token: token, amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Fetch RSA Public Key
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/giftcard/cryptography/rsa-public-key
  Requires signature: true
  """
  def fetch_rsa_public_key_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/giftcard/cryptography/rsa-public-key",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Redeem a Binance Gift Card
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/giftcard/redeemCode
  Requires signature: true
  """
  def redeem_a_binance_gift_card_v1(client, code, externalUid: externalUid, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/giftcard/redeemCode",
          query: [code: code, externalUid: externalUid, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Verify Binance Gift Card by Gift Card Number
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/giftcard/verify
  Requires signature: true
  """
  def verify_binance_gift_card_by_gift_card_number_v1(client, referenceNo, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/giftcard/verify",
          query: [referenceNo: referenceNo, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end