defmodule Binance.API.DualInvestment.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Check Dual Investment accounts
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/dci/product/accounts
  Requires signature: true
  """
  def check_dual_investment_accounts_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/dci/product/accounts",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Change Auto-Compound status
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/dci/product/auto_compound/edit-status
  Requires signature: true
  """
  def change_auto_compound_status_v1(client, positionId, autoCompoundPlan: autoCompoundPlan, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/dci/product/auto_compound/edit-status",
          query: [positionId: positionId, autoCompoundPlan: autoCompoundPlan, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Dual Investment positions
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/dci/product/positions
  Requires signature: true
  """
  def get_dual_investment_positions_v1(client, status: status, pageSize: pageSize, pageIndex: pageIndex, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/dci/product/positions",
          query: [status: status, pageSize: pageSize, pageIndex: pageIndex, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Subscribe Dual Investment products
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/dci/product/subscribe
  Requires signature: true
  """
  def subscribe_dual_investment_products_v1(client, id, orderId, depositAmount, autoCompoundPlan, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/dci/product/subscribe",
          query: [id: id, orderId: orderId, depositAmount: depositAmount, autoCompoundPlan: autoCompoundPlan, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end