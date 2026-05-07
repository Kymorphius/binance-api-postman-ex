defmodule Binance.API.Fiat.Fiat do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Deposit
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/fiat/deposit
  Requires signature: true
  """
  def deposit_v1(client, currency, apiPaymentMethod, amount, recvWindow: recvWindow, ext: ext) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/fiat/deposit",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Content-Type", "application/x-www-form-urlencoded"}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: [currency: currency, apiPaymentMethod: apiPaymentMethod, amount: amount, ext: ext]}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Order Detail
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/fiat/get-order-detail
  Requires signature: true
  """
  def get_order_detail_v1(client, orderNo, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/fiat/get-order-detail",
          query: [orderNo: orderNo, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Fiat Deposit/Withdraw History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/fiat/orders
  Requires signature: true
  """
  def get_fiat_deposit_withdraw_history_v1(client, transactionType, beginTime: beginTime, endTime: endTime, page: page, rows: rows, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/fiat/orders",
          query: [transactionType: transactionType, beginTime: beginTime, endTime: endTime, page: page, rows: rows, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Fiat Payments History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/fiat/payments
  Requires signature: true
  """
  def get_fiat_payments_history_v1(client, transactionType, beginTime: beginTime, endTime: endTime, page: page, rows: rows, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/fiat/payments",
          query: [transactionType: transactionType, beginTime: beginTime, endTime: endTime, page: page, rows: rows, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Fiat Withdraw
  Variant: Withdraw
  Tags: withdraw
  Method: POST
  Path: /sapi/v2/fiat/withdraw
  Requires signature: true
  """
  def fiat_withdraw_v2(client, currency, apiPaymentMethod, amount, accountInfo, recvWindow: recvWindow, ext: ext) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v2/fiat/withdraw",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Content-Type", "application/x-www-form-urlencoded"}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: [currency: currency, apiPaymentMethod: apiPaymentMethod, amount: amount, accountInfo: accountInfo, ext: ext]}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end