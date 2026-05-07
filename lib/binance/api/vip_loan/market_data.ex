defmodule Binance.API.VipLoan.MarketData do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Get Collateral Asset Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/collateral/data
  Requires signature: true
  """
  def get_collateral_asset_data_v1(client, collateralCoin: collateralCoin, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/collateral/data",
          query: [collateralCoin: collateralCoin, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get VIP Loan Interest Rate History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/interestRateHistory
  Requires signature: true
  """
  def get_vip_loan_interest_rate_history_v1(client, coin, recvWindow, startTime: startTime, endTime: endTime, current: current, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/interestRateHistory",
          query: [coin: coin, startTime: startTime, endTime: endTime, current: current, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Loanable Assets Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/loanable/data
  Requires signature: true
  """
  def get_loanable_assets_data_v1(client, loanCoin: loanCoin, vipLevel: vipLevel, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/loanable/data",
          query: [loanCoin: loanCoin, vipLevel: vipLevel, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Borrow Interest Rate
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/loan/vip/request/interestRate
  Requires signature: true
  """
  def get_borrow_interest_rate_v1(client, loanCoin, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/loan/vip/request/interestRate",
          query: [loanCoin: loanCoin, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end