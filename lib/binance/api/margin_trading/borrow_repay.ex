defmodule Binance.API.MarginTrading.BorrowRepay do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec margin_account_borrow_repay_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Margin account borrow/repay
  Variant: Margin
  Tags: margin
  Method: POST
  Path: /sapi/v1/margin/borrow-repay
  Requires signature: true
  Required: asset, isIsolated, symbol, amount, type
  Optional: recvWindow
  """
  def margin_account_borrow_repay_v1(client, asset, isIsolated, symbol, amount, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/borrow-repay",
          query: [
            asset: asset,
            isIsolated: isIsolated,
            symbol: symbol,
            amount: amount,
            type: type,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_borrow_repay_records_in_margin_account_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query borrow/repay records in Margin account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/borrow-repay
  Requires signature: true
  Required: type
  Optional: asset, isolatedSymbol, txId, startTime, endTime, current, size, recvWindow
  """
  def query_borrow_repay_records_in_margin_account_v1(client, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/borrow-repay",
          query: [
            asset: Keyword.get(opts, :asset),
            isolatedSymbol: Keyword.get(opts, :isolatedSymbol),
            txId: Keyword.get(opts, :txId),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            size: Keyword.get(opts, :size),
            type: type,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_interest_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Interest History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/interestHistory
  Requires signature: true
  Optional: asset, isolatedSymbol, startTime, endTime, current, size, recvWindow
  """
  def get_interest_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/interestHistory",
          query: [
            asset: Keyword.get(opts, :asset),
            isolatedSymbol: Keyword.get(opts, :isolatedSymbol),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            current: Keyword.get(opts, :current),
            size: Keyword.get(opts, :size),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_margin_interest_rate_history_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Margin Interest Rate History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/interestRateHistory
  Requires signature: true
  Required: asset
  Optional: vipLevel, startTime, endTime, recvWindow
  """
  def query_margin_interest_rate_history_v1(client, asset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/interestRateHistory",
          query: [
            asset: asset,
            vipLevel: Keyword.get(opts, :vipLevel),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_max_borrow_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Max Borrow
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/maxBorrowable
  Requires signature: true
  Required: asset
  Optional: isolatedSymbol, recvWindow
  """
  def query_max_borrow_v1(client, asset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/maxBorrowable",
          query: [
            asset: asset,
            isolatedSymbol: Keyword.get(opts, :isolatedSymbol),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_future_hourly_interest_rate_v1(Binance.Client.t(), term(), term()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get future hourly interest rate
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/next-hourly-interest-rate
  Requires signature: true
  Required: assets, isIsolated
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
