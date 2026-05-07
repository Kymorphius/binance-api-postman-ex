defmodule Binance.API.MarginTrading.Account do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_bnb_burn_status_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get BNB Burn Status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/bnbBurn
  Requires signature: true
  Optional: recvWindow
  """
  def get_bnb_burn_status_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/bnbBurn",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_cross_margin_account_details_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Cross Margin Account Details
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/account
  Requires signature: true
  Optional: recvWindow
  """
  def query_cross_margin_account_details_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_cross_isolated_margin_capital_flow_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Cross Isolated Margin Capital Flow
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/capital-flow
  Requires signature: true
  Optional: asset, symbol, type, startTime, endTime, fromId, limit, recvWindow
  """
  def query_cross_isolated_margin_capital_flow_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/capital-flow",
          query: [asset: Keyword.get(opts, :asset), symbol: Keyword.get(opts, :symbol), type: Keyword.get(opts, :type), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), fromId: Keyword.get(opts, :fromId), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_cross_margin_fee_data_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Cross Margin Fee Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/crossMarginData
  Requires signature: true
  Optional: vipLevel, coin, recvWindow
  """
  def query_cross_margin_fee_data_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/crossMarginData",
          query: [vipLevel: Keyword.get(opts, :vipLevel), coin: Keyword.get(opts, :coin), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec disable_isolated_margin_account_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Disable Isolated Margin Account
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /sapi/v1/margin/isolated/account
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def disable_isolated_margin_account_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/margin/isolated/account",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec enable_isolated_margin_account_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Enable Isolated Margin Account
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/margin/isolated/account
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def enable_isolated_margin_account_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/isolated/account",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_isolated_margin_account_info_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Isolated Margin Account Info
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/isolated/account
  Requires signature: true
  Optional: symbols, recvWindow
  """
  def query_isolated_margin_account_info_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/isolated/account",
          query: [symbols: Keyword.get(opts, :symbols), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_enabled_isolated_margin_account_limit_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Enabled Isolated Margin Account Limit
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/isolated/accountLimit
  Requires signature: true
  Optional: recvWindow
  """
  def query_enabled_isolated_margin_account_limit_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/isolated/accountLimit",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_isolated_margin_fee_data_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Isolated Margin Fee Data
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/isolatedMarginData
  Requires signature: true
  Optional: vipLevel, symbol, recvWindow
  """
  def query_isolated_margin_fee_data_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/isolatedMarginData",
          query: [vipLevel: Keyword.get(opts, :vipLevel), symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec adjust_cross_margin_max_leverage_v1(Binance.Client.t(), term()) :: {:ok, term()} | {:error, term()}
  @doc """
  Adjust cross margin max leverage
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/margin/max-leverage
  Requires signature: true
  Required: maxLeverage
  """
  def adjust_cross_margin_max_leverage_v1(client, maxLeverage) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/max-leverage",
          query: [maxLeverage: maxLeverage, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_summary_of_margin_account_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Summary of Margin account
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/tradeCoeff
  Requires signature: true
  Optional: recvWindow
  """
  def get_summary_of_margin_account_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/tradeCoeff",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end