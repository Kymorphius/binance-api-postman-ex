defmodule Binance.API.DerivativesTrading.PortfolioMargin.Trade do
  @moduledoc false

  @base_urls %{
    prod_url: "https://papi.binance.com",
    testnet_url: "https://testnet.binancefuture.com"
  }

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec cm_position_adl_quantile_estimation_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  CM Position ADL Quantile Estimation
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/adlQuantile
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def cm_position_adl_quantile_estimation_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/adlQuantile",
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

  @spec cancel_all_cm_open_orders_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel All CM Open Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/cm/allOpenOrders
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def cancel_all_cm_open_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/cm/allOpenOrders",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_all_cm_orders_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query All CM Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/allOrders
  Requires signature: true
  Required: symbol
  Optional: pair, orderId, startTime, endTime, limit, recvWindow
  """
  def query_all_cm_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/allOrders",
          query: [
            symbol: symbol,
            pair: Keyword.get(opts, :pair),
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

  @spec cancel_all_cm_open_conditional_orders_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel All CM Open Conditional Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/cm/conditional/allOpenOrders
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def cancel_all_cm_open_conditional_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/allOpenOrders",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_all_cm_conditional_orders_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query All CM Conditional Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/conditional/allOrders
  Requires signature: true
  Optional: symbol, strategyId, startTime, endTime, limit, recvWindow
  """
  def query_all_cm_conditional_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/allOrders",
          query: [
            symbol: Keyword.get(opts, :symbol),
            strategyId: Keyword.get(opts, :strategyId),
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

  @spec query_current_cm_open_conditional_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Current CM Open Conditional Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/conditional/openOrder
  Requires signature: true
  Required: symbol
  Optional: strategyId, newClientStrategyId, recvWindow
  """
  def query_current_cm_open_conditional_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/openOrder",
          query: [
            symbol: symbol,
            strategyId: Keyword.get(opts, :strategyId),
            newClientStrategyId: Keyword.get(opts, :newClientStrategyId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_all_current_cm_open_conditional_orders_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query All Current CM Open Conditional Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/conditional/openOrders
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def query_all_current_cm_open_conditional_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/openOrders",
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

  @spec cancel_cm_conditional_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel CM Conditional Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/cm/conditional/order
  Requires signature: true
  Required: symbol
  Optional: strategyId, newClientStrategyId, recvWindow
  """
  def cancel_cm_conditional_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/order",
          query: [
            symbol: symbol,
            strategyId: Keyword.get(opts, :strategyId),
            newClientStrategyId: Keyword.get(opts, :newClientStrategyId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec new_cm_conditional_order_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  New CM Conditional Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/cm/conditional/order
  Requires signature: true
  Required: symbol, side, strategyType
  Optional: positionSide, timeInForce, quantity, reduceOnly, price, workingType, priceProtect, newClientStrategyId, stopPrice, activationPrice, callbackRate, recvWindow
  """
  def new_cm_conditional_order_v1(client, symbol, side, strategyType, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/order",
          query: [
            symbol: symbol,
            side: side,
            positionSide: Keyword.get(opts, :positionSide),
            strategyType: strategyType,
            timeInForce: Keyword.get(opts, :timeInForce),
            quantity: Keyword.get(opts, :quantity),
            reduceOnly: Keyword.get(opts, :reduceOnly),
            price: Keyword.get(opts, :price),
            workingType: Keyword.get(opts, :workingType),
            priceProtect: Keyword.get(opts, :priceProtect),
            newClientStrategyId: Keyword.get(opts, :newClientStrategyId),
            stopPrice: Keyword.get(opts, :stopPrice),
            activationPrice: Keyword.get(opts, :activationPrice),
            callbackRate: Keyword.get(opts, :callbackRate),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_cm_conditional_order_history_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query CM Conditional Order History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/conditional/orderHistory
  Requires signature: true
  Required: symbol
  Optional: strategyId, newClientStrategyId, recvWindow
  """
  def query_cm_conditional_order_history_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/conditional/orderHistory",
          query: [
            symbol: symbol,
            strategyId: Keyword.get(opts, :strategyId),
            newClientStrategyId: Keyword.get(opts, :newClientStrategyId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_user_s_cm_force_orders_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query User's CM Force Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/forceOrders
  Requires signature: true
  Optional: symbol, autoCloseType, startTime, endTime, limit, recvWindow
  """
  def query_user_s_cm_force_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/forceOrders",
          query: [
            symbol: Keyword.get(opts, :symbol),
            autoCloseType: Keyword.get(opts, :autoCloseType),
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

  @spec query_current_cm_open_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Current CM Open Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/openOrder
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, recvWindow
  """
  def query_current_cm_open_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/openOrder",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_all_current_cm_open_orders_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query All Current CM Open Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/openOrders
  Requires signature: true
  Optional: symbol, pair, recvWindow
  """
  def query_all_current_cm_open_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/openOrders",
          query: [
            symbol: Keyword.get(opts, :symbol),
            pair: Keyword.get(opts, :pair),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec cancel_cm_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel CM Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/cm/order
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, recvWindow
  """
  def cancel_cm_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/cm/order",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec modify_cm_order_v1(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Modify CM Order
  Variant: Trade
  Tags: trade
  Method: PUT
  Path: /papi/v1/cm/order
  Requires signature: true
  Required: symbol, side, quantity, price
  Optional: orderId, origClientOrderId, priceMatch, recvWindow
  """
  def modify_cm_order_v1(client, symbol, side, quantity, price, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/papi/v1/cm/order",
          query: [
            orderId: Keyword.get(opts, :orderId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
            symbol: symbol,
            side: side,
            quantity: quantity,
            price: price,
            priceMatch: Keyword.get(opts, :priceMatch),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec new_cm_order_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  New CM Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/cm/order
  Requires signature: true
  Required: symbol, side, type
  Optional: positionSide, timeInForce, quantity, reduceOnly, price, priceMatch, newClientOrderId, newOrderRespType, recvWindow
  """
  def new_cm_order_v1(client, symbol, side, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/cm/order",
          query: [
            symbol: symbol,
            side: side,
            positionSide: Keyword.get(opts, :positionSide),
            type: type,
            timeInForce: Keyword.get(opts, :timeInForce),
            quantity: Keyword.get(opts, :quantity),
            reduceOnly: Keyword.get(opts, :reduceOnly),
            price: Keyword.get(opts, :price),
            priceMatch: Keyword.get(opts, :priceMatch),
            newClientOrderId: Keyword.get(opts, :newClientOrderId),
            newOrderRespType: Keyword.get(opts, :newOrderRespType),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_cm_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query CM Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/order
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, recvWindow
  """
  def query_cm_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/order",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_cm_modify_order_history_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query CM Modify Order History
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /papi/v1/cm/orderAmendment
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, startTime, endTime, limit, recvWindow
  """
  def query_cm_modify_order_history_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/orderAmendment",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
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

  @spec cm_account_trade_list_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  CM Account Trade List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/cm/userTrades
  Requires signature: true
  Optional: symbol, pair, startTime, endTime, fromId, limit, recvWindow
  """
  def cm_account_trade_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/cm/userTrades",
          query: [
            symbol: Keyword.get(opts, :symbol),
            pair: Keyword.get(opts, :pair),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            fromId: Keyword.get(opts, :fromId),
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

  @spec cancel_margin_account_all_open_orders_on_a_symbol_v1(
          Binance.Client.t(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel Margin Account All Open Orders on a Symbol
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/margin/allOpenOrders
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def cancel_margin_account_all_open_orders_on_a_symbol_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/margin/allOpenOrders",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_margin_account_s_all_oco_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Margin Account's all OCO
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/allOrderList
  Requires signature: true
  Optional: fromId, startTime, endTime, limit, recvWindow
  """
  def query_margin_account_s_all_oco_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/allOrderList",
          query: [
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

  @spec query_all_margin_account_orders_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query All Margin Account Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/allOrders
  Requires signature: true
  Required: symbol
  Optional: orderId, startTime, endTime, limit, recvWindow
  """
  def query_all_margin_account_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/allOrders",
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

  @spec query_user_s_margin_force_orders_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query User's Margin Force Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/forceOrders
  Requires signature: true
  Optional: startTime, endTime, current, size, recvWindow
  """
  def query_user_s_margin_force_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/forceOrders",
          query: [
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

  @spec margin_account_trade_list_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Margin Account Trade List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/myTrades
  Requires signature: true
  Required: symbol
  Optional: orderId, startTime, endTime, fromId, limit, recvWindow
  """
  def margin_account_trade_list_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/myTrades",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            fromId: Keyword.get(opts, :fromId),
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

  @spec query_margin_account_s_open_oco_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Margin Account's Open OCO
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/openOrderList
  Requires signature: true
  Optional: recvWindow
  """
  def query_margin_account_s_open_oco_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/openOrderList",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_current_margin_open_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Current Margin Open Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/openOrders
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def query_current_margin_open_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/openOrders",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec cancel_margin_account_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel Margin Account Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/margin/order
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, newClientOrderId, recvWindow
  """
  def cancel_margin_account_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/margin/order",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
            newClientOrderId: Keyword.get(opts, :newClientOrderId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec new_margin_order_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  New Margin Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/margin/order
  Requires signature: true
  Required: symbol, side, type
  Optional: quantity, quoteOrderQty, price, stopPrice, newClientOrderId, newOrderRespType, icebergQty, sideEffectType, timeInForce, selfTradePreventionMode, autoRepayAtCancel, recvWindow
  """
  def new_margin_order_v1(client, symbol, side, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/margin/order",
          query: [
            symbol: symbol,
            side: side,
            type: type,
            quantity: Keyword.get(opts, :quantity),
            quoteOrderQty: Keyword.get(opts, :quoteOrderQty),
            price: Keyword.get(opts, :price),
            stopPrice: Keyword.get(opts, :stopPrice),
            newClientOrderId: Keyword.get(opts, :newClientOrderId),
            newOrderRespType: Keyword.get(opts, :newOrderRespType),
            icebergQty: Keyword.get(opts, :icebergQty),
            sideEffectType: Keyword.get(opts, :sideEffectType),
            timeInForce: Keyword.get(opts, :timeInForce),
            selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode),
            autoRepayAtCancel: Keyword.get(opts, :autoRepayAtCancel),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_margin_account_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Margin Account Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/order
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, recvWindow
  """
  def query_margin_account_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/order",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec margin_account_new_oco_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Margin Account New OCO
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/margin/order/oco
  Requires signature: true
  Required: symbol, side, quantity, price, stopPrice
  Optional: listClientOrderId, limitClientOrderId, limitIcebergQty, stopClientOrderId, stopLimitPrice, stopIcebergQty, stopLimitTimeInForce, newOrderRespType, sideEffectType, recvWindow
  """
  def margin_account_new_oco_v1(client, symbol, side, quantity, price, stopPrice, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/margin/order/oco",
          query: [
            symbol: symbol,
            listClientOrderId: Keyword.get(opts, :listClientOrderId),
            side: side,
            quantity: quantity,
            limitClientOrderId: Keyword.get(opts, :limitClientOrderId),
            price: price,
            limitIcebergQty: Keyword.get(opts, :limitIcebergQty),
            stopClientOrderId: Keyword.get(opts, :stopClientOrderId),
            stopPrice: stopPrice,
            stopLimitPrice: Keyword.get(opts, :stopLimitPrice),
            stopIcebergQty: Keyword.get(opts, :stopIcebergQty),
            stopLimitTimeInForce: Keyword.get(opts, :stopLimitTimeInForce),
            newOrderRespType: Keyword.get(opts, :newOrderRespType),
            sideEffectType: Keyword.get(opts, :sideEffectType),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec cancel_margin_account_oco_orders_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel Margin Account OCO Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/margin/orderList
  Requires signature: true
  Required: symbol
  Optional: orderListId, listClientOrderId, newClientOrderId, recvWindow
  """
  def cancel_margin_account_oco_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/margin/orderList",
          query: [
            symbol: symbol,
            orderListId: Keyword.get(opts, :orderListId),
            listClientOrderId: Keyword.get(opts, :listClientOrderId),
            newClientOrderId: Keyword.get(opts, :newClientOrderId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_margin_account_s_oco_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Margin Account's OCO
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/margin/orderList
  Requires signature: true
  Optional: orderListId, origClientOrderId, recvWindow
  """
  def query_margin_account_s_oco_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/margin/orderList",
          query: [
            orderListId: Keyword.get(opts, :orderListId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec margin_account_repay_debt_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Margin Account Repay Debt
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/margin/repay-debt
  Requires signature: true
  Required: asset
  Optional: amount, specifyRepayAssets, recvWindow
  """
  def margin_account_repay_debt_v1(client, asset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/margin/repay-debt",
          query: [
            asset: asset,
            amount: Keyword.get(opts, :amount),
            specifyRepayAssets: Keyword.get(opts, :specifyRepayAssets),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec margin_account_borrow_v1(Binance.Client.t(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Margin Account Borrow
  Variant: Margin
  Tags: margin
  Method: POST
  Path: /papi/v1/marginLoan
  Requires signature: true
  Required: asset, amount
  Optional: recvWindow
  """
  def margin_account_borrow_v1(client, asset, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/marginLoan",
          query: [
            asset: asset,
            amount: amount,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec margin_account_repay_v1(Binance.Client.t(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Margin Account Repay
  Variant: Margin
  Tags: margin
  Method: POST
  Path: /papi/v1/repayLoan
  Requires signature: true
  Required: asset, amount
  Optional: recvWindow
  """
  def margin_account_repay_v1(client, asset, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/repayLoan",
          query: [
            asset: asset,
            amount: amount,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec um_position_adl_quantile_estimation_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  UM Position ADL Quantile Estimation
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/adlQuantile
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def um_position_adl_quantile_estimation_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/adlQuantile",
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

  @spec query_current_um_open_algo_order_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Current UM Open Algo Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/algo/algoOrder
  Requires signature: true
  Optional: algoId, clientAlgoId, recvWindow
  """
  def query_current_um_open_algo_order_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/algo/algoOrder",
          query: [
            algoId: Keyword.get(opts, :algoId),
            clientAlgoId: Keyword.get(opts, :clientAlgoId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_um_algo_order_history_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query UM Algo Order History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/algo/allAlgoOrders
  Requires signature: true
  Required: symbol
  Optional: algoId, startTime, endTime, limit, recvWindow
  """
  def query_um_algo_order_history_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/algo/allAlgoOrders",
          query: [
            symbol: symbol,
            algoId: Keyword.get(opts, :algoId),
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

  @spec cancel_all_um_algo_open_orders_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel All UM Algo Open Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/um/algo/allOpenOrders
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def cancel_all_um_algo_open_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/um/algo/allOpenOrders",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_all_current_um_open_algo_orders_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query All Current UM Open Algo Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/algo/openAlgoOrders
  Requires signature: true
  Optional: algoType, symbol, algoId, recvWindow
  """
  def query_all_current_um_open_algo_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/algo/openAlgoOrders",
          query: [
            algoType: Keyword.get(opts, :algoType),
            symbol: Keyword.get(opts, :symbol),
            algoId: Keyword.get(opts, :algoId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec cancel_um_algo_order_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel UM Algo Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/um/algo/order
  Requires signature: true
  Optional: algoId, clientAlgoId, recvWindow
  """
  def cancel_um_algo_order_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/um/algo/order",
          query: [
            algoId: Keyword.get(opts, :algoId),
            clientAlgoId: Keyword.get(opts, :clientAlgoId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec new_um_algo_order_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  New UM Algo Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/um/algo/order
  Requires signature: true
  Required: algoType, symbol, side, type, quantity
  Optional: positionSide, timeInForce, price, triggerPrice, workingType, priceMatch, priceProtect, reduceOnly, activatePrice, callbackRate, clientAlgoId, newOrderRespType, selfTradePreventionMode, goodTillDate, recvWindow
  """
  def new_um_algo_order_v1(client, algoType, symbol, side, type, quantity, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/algo/order",
          query: [
            algoType: algoType,
            symbol: symbol,
            side: side,
            positionSide: Keyword.get(opts, :positionSide),
            type: type,
            timeInForce: Keyword.get(opts, :timeInForce),
            quantity: quantity,
            price: Keyword.get(opts, :price),
            triggerPrice: Keyword.get(opts, :triggerPrice),
            workingType: Keyword.get(opts, :workingType),
            priceMatch: Keyword.get(opts, :priceMatch),
            priceProtect: Keyword.get(opts, :priceProtect),
            reduceOnly: Keyword.get(opts, :reduceOnly),
            activatePrice: Keyword.get(opts, :activatePrice),
            callbackRate: Keyword.get(opts, :callbackRate),
            clientAlgoId: Keyword.get(opts, :clientAlgoId),
            newOrderRespType: Keyword.get(opts, :newOrderRespType),
            selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode),
            goodTillDate: Keyword.get(opts, :goodTillDate),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec cancel_all_um_open_orders_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel All UM Open Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/um/allOpenOrders
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def cancel_all_um_open_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/um/allOpenOrders",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_all_um_orders_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query All UM Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/allOrders
  Requires signature: true
  Required: symbol
  Optional: orderId, startTime, endTime, limit, recvWindow
  """
  def query_all_um_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/allOrders",
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

  @spec cancel_all_um_open_conditional_orders_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel All UM Open Conditional Orders
  Method: DELETE
  Path: /papi/v1/um/conditional/allOpenOrders
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def cancel_all_um_open_conditional_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/um/conditional/allOpenOrders",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_all_um_conditional_orders_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query All UM Conditional Orders
  Method: GET
  Path: /papi/v1/um/conditional/allOrders
  Requires signature: true
  Optional: symbol, strategyId, startTime, endTime, limit, recvWindow
  """
  def query_all_um_conditional_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/conditional/allOrders",
          query: [
            symbol: Keyword.get(opts, :symbol),
            strategyId: Keyword.get(opts, :strategyId),
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

  @spec query_current_um_open_conditional_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Current UM Open Conditional Order
  Method: GET
  Path: /papi/v1/um/conditional/openOrder
  Requires signature: true
  Required: symbol
  Optional: strategyId, newClientStrategyId, recvWindow
  """
  def query_current_um_open_conditional_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/conditional/openOrder",
          query: [
            symbol: symbol,
            strategyId: Keyword.get(opts, :strategyId),
            newClientStrategyId: Keyword.get(opts, :newClientStrategyId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_all_current_um_open_conditional_orders_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query All Current UM Open Conditional Orders
  Method: GET
  Path: /papi/v1/um/conditional/openOrders
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def query_all_current_um_open_conditional_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/conditional/openOrders",
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

  @spec cancel_um_conditional_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel UM Conditional Order
  Method: DELETE
  Path: /papi/v1/um/conditional/order
  Requires signature: true
  Required: symbol
  Optional: strategyId, newClientStrategyId, recvWindow
  """
  def cancel_um_conditional_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/um/conditional/order",
          query: [
            symbol: symbol,
            strategyId: Keyword.get(opts, :strategyId),
            newClientStrategyId: Keyword.get(opts, :newClientStrategyId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec new_um_conditional_order_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  New UM Conditional Order
  Method: POST
  Path: /papi/v1/um/conditional/order
  Requires signature: true
  Required: symbol, side, strategyType
  Optional: positionSide, timeInForce, quantity, reduceOnly, price, workingType, priceProtect, newClientStrategyId, stopPrice, activationPrice, callbackRate, priceMatch, selfTradePreventionMode, goodTillDate, recvWindow
  """
  def new_um_conditional_order_v1(client, symbol, side, strategyType, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/conditional/order",
          query: [
            symbol: symbol,
            side: side,
            positionSide: Keyword.get(opts, :positionSide),
            strategyType: strategyType,
            timeInForce: Keyword.get(opts, :timeInForce),
            quantity: Keyword.get(opts, :quantity),
            reduceOnly: Keyword.get(opts, :reduceOnly),
            price: Keyword.get(opts, :price),
            workingType: Keyword.get(opts, :workingType),
            priceProtect: Keyword.get(opts, :priceProtect),
            newClientStrategyId: Keyword.get(opts, :newClientStrategyId),
            stopPrice: Keyword.get(opts, :stopPrice),
            activationPrice: Keyword.get(opts, :activationPrice),
            callbackRate: Keyword.get(opts, :callbackRate),
            priceMatch: Keyword.get(opts, :priceMatch),
            selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode),
            goodTillDate: Keyword.get(opts, :goodTillDate),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_um_conditional_order_history_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query UM Conditional Order History
  Method: GET
  Path: /papi/v1/um/conditional/orderHistory
  Requires signature: true
  Required: symbol
  Optional: strategyId, newClientStrategyId, recvWindow
  """
  def query_um_conditional_order_history_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/conditional/orderHistory",
          query: [
            symbol: symbol,
            strategyId: Keyword.get(opts, :strategyId),
            newClientStrategyId: Keyword.get(opts, :newClientStrategyId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_um_futures_bnb_burn_status_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get UM Futures BNB Burn Status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/feeBurn
  Requires signature: true
  Optional: recvWindow
  """
  def get_um_futures_bnb_burn_status_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/feeBurn",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec toggle_bnb_burn_on_um_futures_trade_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Toggle BNB Burn On UM Futures Trade
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/um/feeBurn
  Requires signature: true
  Required: feeBurn
  Optional: recvWindow
  """
  def toggle_bnb_burn_on_um_futures_trade_v1(client, feeBurn, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/feeBurn",
          query: [feeBurn: feeBurn, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_user_s_um_force_orders_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query User's UM Force Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/forceOrders
  Requires signature: true
  Optional: symbol, autoCloseType, startTime, endTime, limit, recvWindow
  """
  def query_user_s_um_force_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/forceOrders",
          query: [
            symbol: Keyword.get(opts, :symbol),
            autoCloseType: Keyword.get(opts, :autoCloseType),
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

  @spec query_current_um_open_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Current UM Open Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/openOrder
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, recvWindow
  """
  def query_current_um_open_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/openOrder",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_all_current_um_open_orders_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query All Current UM Open Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/openOrders
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def query_all_current_um_open_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/openOrders",
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

  @spec cancel_um_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Cancel UM Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /papi/v1/um/order
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, recvWindow
  """
  def cancel_um_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/papi/v1/um/order",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec modify_um_order_v1(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Modify UM Order
  Variant: Trade
  Tags: trade
  Method: PUT
  Path: /papi/v1/um/order
  Requires signature: true
  Required: symbol, side, quantity, price
  Optional: orderId, origClientOrderId, priceMatch, recvWindow
  """
  def modify_um_order_v1(client, symbol, side, quantity, price, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/papi/v1/um/order",
          query: [
            orderId: Keyword.get(opts, :orderId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
            symbol: symbol,
            side: side,
            quantity: quantity,
            price: price,
            priceMatch: Keyword.get(opts, :priceMatch),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec new_um_order_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  New UM Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /papi/v1/um/order
  Requires signature: true
  Required: symbol, side, type
  Optional: positionSide, timeInForce, quantity, reduceOnly, price, newClientOrderId, newOrderRespType, priceMatch, selfTradePreventionMode, goodTillDate, recvWindow
  """
  def new_um_order_v1(client, symbol, side, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/order",
          query: [
            symbol: symbol,
            side: side,
            positionSide: Keyword.get(opts, :positionSide),
            type: type,
            timeInForce: Keyword.get(opts, :timeInForce),
            quantity: Keyword.get(opts, :quantity),
            reduceOnly: Keyword.get(opts, :reduceOnly),
            price: Keyword.get(opts, :price),
            newClientOrderId: Keyword.get(opts, :newClientOrderId),
            newOrderRespType: Keyword.get(opts, :newOrderRespType),
            priceMatch: Keyword.get(opts, :priceMatch),
            selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode),
            goodTillDate: Keyword.get(opts, :goodTillDate),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_um_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query UM Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/order
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, recvWindow
  """
  def query_um_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/order",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_um_modify_order_history_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query UM Modify Order History
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /papi/v1/um/orderAmendment
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, startTime, endTime, limit, recvWindow
  """
  def query_um_modify_order_history_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/orderAmendment",
          query: [
            symbol: symbol,
            orderId: Keyword.get(opts, :orderId),
            origClientOrderId: Keyword.get(opts, :origClientOrderId),
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

  @spec futures_tradfi_perps_contract_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Futures TradFi Perps Contract
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /papi/v1/um/stock/contract
  Requires signature: true
  Optional: recvWindow
  """
  def futures_tradfi_perps_contract_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/papi/v1/um/stock/contract",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec um_account_trade_list_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  UM Account Trade List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /papi/v1/um/userTrades
  Requires signature: true
  Required: symbol
  Optional: startTime, endTime, fromId, limit, recvWindow
  """
  def um_account_trade_list_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/papi/v1/um/userTrades",
          query: [
            symbol: symbol,
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            fromId: Keyword.get(opts, :fromId),
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
