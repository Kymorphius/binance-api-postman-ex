defmodule Binance.API.DerivativesTrading.Options.Trade do
  @moduledoc false

  @base_urls %{
    prod_url: "https://eapi.binance.com",
    testnet_url: "https://testnet.binancefuture.com"
  }

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec cancel_all_option_orders_on_specific_symbol_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel all Option orders on specific symbol
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /eapi/v1/allOpenOrders
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def cancel_all_option_orders_on_specific_symbol_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/eapi/v1/allOpenOrders",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec cancel_all_option_orders_by_underlying_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel All Option Orders By Underlying
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /eapi/v1/allOpenOrdersByUnderlying
  Requires signature: true
  Required: underlying
  Optional: recvWindow
  """
  def cancel_all_option_orders_by_underlying_v1(client, underlying, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/eapi/v1/allOpenOrdersByUnderlying",
          query: [
            underlying: underlying,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec cancel_multiple_option_orders_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel Multiple Option Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /eapi/v1/batchOrders
  Requires signature: true
  Required: symbol
  Optional: orderIds, clientOrderIds, recvWindow
  """
  def cancel_multiple_option_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/eapi/v1/batchOrders",
          query: [
            symbol: symbol,
            orderIds: Keyword.get(opts, :orderIds),
            clientOrderIds: Keyword.get(opts, :clientOrderIds),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec place_multiple_orders_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Place Multiple Orders
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /eapi/v1/batchOrders
  Requires signature: true
  Required: orders
  Optional: recvWindow
  """
  def place_multiple_orders_v1(client, orders, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/batchOrders",
          query: [orders: orders, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec user_commission_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  User Commission
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/commission
  Requires signature: true
  Optional: recvWindow
  """
  def user_commission_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/commission",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec user_exercise_record_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  User Exercise Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/exerciseRecord
  Requires signature: true
  Optional: symbol, startTime, endTime, limit, recvWindow
  """
  def user_exercise_record_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/exerciseRecord",
          query: [
            symbol: Keyword.get(opts, :symbol),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            limit: Keyword.get(opts, :limit),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_option_order_history_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Option Order History
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /eapi/v1/historyOrders
  Requires signature: true
  Required: symbol
  Optional: orderId, startTime, endTime, limit, recvWindow
  """
  def query_option_order_history_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/historyOrders",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            limit: Keyword.get(opts, :limit),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_current_open_option_orders_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Current Open Option Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/openOrders
  Requires signature: true
  Optional: symbol, orderId, startTime, endTime, recvWindow
  """
  def query_current_open_option_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/openOrders",
          query: [
            symbol: Keyword.get(opts, :symbol),
            orderId: Keyword.get(opts, :orderId),
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

  @spec cancel_option_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel Option Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /eapi/v1/order
  Requires signature: true
  Required: symbol
  Optional: orderId, clientOrderId, recvWindow
  """
  def cancel_option_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/eapi/v1/order",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            clientOrderId: Keyword.get(opts, :clientOrderId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec new_order_v1(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  New Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /eapi/v1/order
  Requires signature: true
  Required: symbol, side, type, quantity
  Optional: price, timeInForce, reduceOnly, postOnly, newOrderRespType, clientOrderId, isMmp, selfTradePreventionMode, recvWindow
  """
  def new_order_v1(client, symbol, side, type, quantity, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/eapi/v1/order",
          query: [
            symbol: symbol,
            side: side,
            type: type,
            quantity: quantity,
            price: Keyword.get(opts, :price),
            timeInForce: Keyword.get(opts, :timeInForce),
            reduceOnly: Keyword.get(opts, :reduceOnly),
            postOnly: Keyword.get(opts, :postOnly),
            newOrderRespType: Keyword.get(opts, :newOrderRespType),
            clientOrderId: Keyword.get(opts, :clientOrderId),
            isMmp: Keyword.get(opts, :isMmp),
            selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_single_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Single Order
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /eapi/v1/order
  Requires signature: true
  Required: symbol
  Optional: orderId, clientOrderId, recvWindow
  """
  def query_single_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/order",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            clientOrderId: Keyword.get(opts, :clientOrderId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec option_position_information_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Option Position Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/position
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def option_position_information_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/position",
          query: [
            symbol: Keyword.get(opts, :symbol),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec account_trade_list_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Account Trade List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /eapi/v1/userTrades
  Requires signature: true
  Optional: symbol, fromId, startTime, endTime, limit, recvWindow
  """
  def account_trade_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/eapi/v1/userTrades",
          query: [
            symbol: Keyword.get(opts, :symbol),
            fromId: Keyword.get(opts, :fromId),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            limit: Keyword.get(opts, :limit),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end
end
