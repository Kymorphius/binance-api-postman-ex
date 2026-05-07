defmodule Binance.API.DerivativesTrading.Options.MarketMakerBlockTrade do
  @moduledoc false

  @base_urls %{prod_url: "https://eapi.binance.com", testnet_url: "https://testnet.binancefuture.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec cancel_block_trade_order_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel Block Trade Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /eapi/v1/block/order/create
  Requires signature: true
  Required: blockOrderMatchingKey
  Optional: recvWindow
  """
  def cancel_block_trade_order_v1(client, blockOrderMatchingKey, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/eapi/v1/block/order/create",
          query: [blockOrderMatchingKey: blockOrderMatchingKey, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec extend_block_trade_order_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Extend Block Trade Order
  Variant: Trade
  Tags: trade
  Method: PUT
  Path: /eapi/v1/block/order/create
  Requires signature: true
  Required: blockOrderMatchingKey
  Optional: recvWindow
  """
  def extend_block_trade_order_v1(client, blockOrderMatchingKey, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/eapi/v1/block/order/create",
          query: [blockOrderMatchingKey: blockOrderMatchingKey, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec new_block_trade_order_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  New Block Trade Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /eapi/v1/block/order/create
  Requires signature: true
  Required: liquidity, legs
  Optional: recvWindow
  """
  def new_block_trade_order_v1(client, liquidity, legs, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/block/order/create",
          query: [liquidity: liquidity, legs: legs, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec accept_block_trade_order_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Accept Block Trade Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /eapi/v1/block/order/execute
  Requires signature: true
  Required: blockOrderMatchingKey
  Optional: recvWindow
  """
  def accept_block_trade_order_v1(client, blockOrderMatchingKey, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/block/order/execute",
          query: [blockOrderMatchingKey: blockOrderMatchingKey, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_block_trade_details_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Block Trade Details
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/block/order/execute
  Requires signature: true
  Required: blockOrderMatchingKey
  Optional: recvWindow
  """
  def query_block_trade_details_v1(client, blockOrderMatchingKey, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/block/order/execute",
          query: [blockOrderMatchingKey: blockOrderMatchingKey, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_block_trade_order_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Block Trade Order
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /eapi/v1/block/order/orders
  Requires signature: true
  Optional: blockOrderMatchingKey, endTime, startTime, underlying, recvWindow
  """
  def query_block_trade_order_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/block/order/orders",
          query: [blockOrderMatchingKey: Keyword.get(opts, :blockOrderMatchingKey), endTime: Keyword.get(opts, :endTime), startTime: Keyword.get(opts, :startTime), underlying: Keyword.get(opts, :underlying), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec account_block_trade_list_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Account Block Trade List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/block/user-trades
  Requires signature: true
  Optional: endTime, startTime, underlying, recvWindow
  """
  def account_block_trade_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/block/user-trades",
          query: [endTime: Keyword.get(opts, :endTime), startTime: Keyword.get(opts, :startTime), underlying: Keyword.get(opts, :underlying), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end