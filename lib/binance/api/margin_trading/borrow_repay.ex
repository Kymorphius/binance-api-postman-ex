defmodule Binance.API.MarginTrading.BorrowRepay do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Margin account borrow/repay
  Variant: Margin
  Tags: margin
  Method: POST
  Path: /sapi/v1/margin/borrow-repay
  Requires signature: true
  """
  def margin_account_borrow_repay_v1(client, asset, isIsolated, symbol, amount, type, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/borrow-repay",
          query: [asset: asset, isIsolated: isIsolated, symbol: symbol, amount: amount, type: type, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query borrow/repay records in Margin account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/borrow-repay
  Requires signature: true
  """
  def query_borrow_repay_records_in_margin_account_v1(client, type, asset: asset, isolatedSymbol: isolatedSymbol, txId: txId, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/borrow-repay",
          query: [asset: asset, isolatedSymbol: isolatedSymbol, txId: txId, startTime: startTime, endTime: endTime, current: current, size: size, type: type, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Interest History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/interestHistory
  Requires signature: true
  """
  def get_interest_history_v1(client, asset: asset, isolatedSymbol: isolatedSymbol, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/interestHistory",
          query: [asset: asset, isolatedSymbol: isolatedSymbol, startTime: startTime, endTime: endTime, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Margin Interest Rate History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/interestRateHistory
  Requires signature: true
  """
  def query_margin_interest_rate_history_v1(client, asset, vipLevel: vipLevel, startTime: startTime, endTime: endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/interestRateHistory",
          query: [asset: asset, vipLevel: vipLevel, startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Max Borrow
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/maxBorrowable
  Requires signature: true
  """
  def query_max_borrow_v1(client, asset, isolatedSymbol: isolatedSymbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/maxBorrowable",
          query: [asset: asset, isolatedSymbol: isolatedSymbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get future hourly interest rate
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/next-hourly-interest-rate
  Requires signature: true
  """
  def get_future_hourly_interest_rate_v1(client, assets, isIsolated) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/next-hourly-interest-rate",
          query: [assets: assets, isIsolated: isIsolated, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end