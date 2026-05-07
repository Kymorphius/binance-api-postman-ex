defmodule Binance.API.Spot.Account do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com", testnet_url: "https://testnet.binance.vision", demo_url: "https://demo-api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec account_information_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Account information
  Method: GET
  Path: /api/v3/account
  Requires signature: true
  Optional: omitZeroBalances, recvWindow
  """
  def account_information_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/account",
          query: [omitZeroBalances: Keyword.get(opts, :omitZeroBalances), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_commission_rates_v3(Binance.Client.t(), term()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Commission Rates
  Method: GET
  Path: /api/v3/account/commission
  Requires signature: true
  Required: symbol
  """
  def query_commission_rates_v3(client, symbol) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/account/commission",
          query: [symbol: symbol, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_all_order_lists_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query all Order lists
  Method: GET
  Path: /api/v3/allOrderList
  Requires signature: true
  Optional: fromId, startTime, endTime, limit, recvWindow
  """
  def query_all_order_lists_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/allOrderList",
          query: [fromId: Keyword.get(opts, :fromId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec all_orders_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  All orders
  Method: GET
  Path: /api/v3/allOrders
  Requires signature: true
  Required: symbol
  Optional: orderId, startTime, endTime, limit, recvWindow
  """
  def all_orders_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/allOrders",
          query: [symbol: symbol, orderId: Keyword.get(opts, :orderId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_allocations_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Allocations
  Method: GET
  Path: /api/v3/myAllocations
  Requires signature: true
  Required: symbol
  Optional: startTime, endTime, fromAllocationId, limit, orderId, recvWindow
  """
  def query_allocations_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/myAllocations",
          query: [symbol: symbol, startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), fromAllocationId: Keyword.get(opts, :fromAllocationId), limit: Keyword.get(opts, :limit), orderId: Keyword.get(opts, :orderId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_relevant_filters_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query relevant filters
  Method: GET
  Path: /api/v3/myFilters
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def query_relevant_filters_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/myFilters",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_prevented_matches_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Prevented Matches
  Method: GET
  Path: /api/v3/myPreventedMatches
  Requires signature: true
  Required: symbol
  Optional: preventedMatchId, orderId, fromPreventedMatchId, limit, recvWindow
  """
  def query_prevented_matches_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/myPreventedMatches",
          query: [symbol: symbol, preventedMatchId: Keyword.get(opts, :preventedMatchId), orderId: Keyword.get(opts, :orderId), fromPreventedMatchId: Keyword.get(opts, :fromPreventedMatchId), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec account_trade_list_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Account trade list
  Method: GET
  Path: /api/v3/myTrades
  Requires signature: true
  Required: symbol
  Optional: orderId, startTime, endTime, fromId, limit, recvWindow
  """
  def account_trade_list_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/myTrades",
          query: [symbol: symbol, orderId: Keyword.get(opts, :orderId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), fromId: Keyword.get(opts, :fromId), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_open_order_lists_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Open Order lists
  Method: GET
  Path: /api/v3/openOrderList
  Requires signature: true
  Optional: recvWindow
  """
  def query_open_order_lists_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/openOrderList",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec current_open_orders_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Current open orders
  Method: GET
  Path: /api/v3/openOrders
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def current_open_orders_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/openOrders",
          query: [symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_order_v3(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query order
  Method: GET
  Path: /api/v3/order
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, recvWindow
  """
  def query_order_v3(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/order",
          query: [symbol: symbol, orderId: Keyword.get(opts, :orderId), origClientOrderId: Keyword.get(opts, :origClientOrderId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_order_amendments_v3(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Order Amendments
  Method: GET
  Path: /api/v3/order/amendments
  Requires signature: true
  Required: symbol, orderId
  Optional: fromExecutionId, limit, recvWindow
  """
  def query_order_amendments_v3(client, symbol, orderId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/order/amendments",
          query: [symbol: symbol, orderId: orderId, fromExecutionId: Keyword.get(opts, :fromExecutionId), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_order_list_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Order list
  Method: GET
  Path: /api/v3/orderList
  Requires signature: true
  Optional: orderListId, origClientOrderId, recvWindow
  """
  def query_order_list_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/orderList",
          query: [orderListId: Keyword.get(opts, :orderListId), origClientOrderId: Keyword.get(opts, :origClientOrderId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_unfilled_order_count_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Unfilled Order Count
  Method: GET
  Path: /api/v3/rateLimit/order
  Requires signature: true
  Optional: recvWindow
  """
  def query_unfilled_order_count_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/api/v3/rateLimit/order",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end