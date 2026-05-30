defmodule Binance.API.MarginTrading.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec query_margin_account_s_all_oco_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Margin Account's all OCO
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/allOrderList
  Requires signature: true
  Optional: isIsolated, symbol, fromId, startTime, endTime, limit, recvWindow
  """
  def query_margin_account_s_all_oco_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/allOrderList",
          query: [
            isIsolated: Keyword.get(opts, :isIsolated),
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

  @spec query_margin_account_s_all_orders_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Margin Account's All Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/allOrders
  Requires signature: true
  Required: symbol
  Optional: isIsolated, orderId, startTime, endTime, limit, recvWindow
  """
  def query_margin_account_s_all_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/allOrders",
          query: [
            symbol: symbol,
            isIsolated: Keyword.get(opts, :isIsolated),
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

  @spec query_special_key_list_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Special key List
  Variant: Trade
  Tags: low_latency_trading, trade
  Method: GET
  Path: /sapi/v1/margin/api-key-list
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def query_special_key_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/api-key-list",
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

  @spec create_special_key_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Create Special Key
  Variant: Trade
  Tags: low_latency_trading, trade
  Method: POST
  Path: /sapi/v1/margin/apiKey
  Requires signature: true
  Required: apiName
  Optional: symbol, ip, publicKey, permissionMode, recvWindow
  """
  def create_special_key_v1(client, apiName, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/apiKey",
          query: [
            apiName: apiName,
            symbol: Keyword.get(opts, :symbol),
            ip: Keyword.get(opts, :ip),
            publicKey: Keyword.get(opts, :publicKey),
            permissionMode: Keyword.get(opts, :permissionMode),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec delete_special_key_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Delete Special Key
  Variant: Trade
  Tags: low_latency_trading, trade
  Method: DELETE
  Path: /sapi/v1/margin/apiKey
  Requires signature: true
  Optional: apiName, symbol, recvWindow
  """
  def delete_special_key_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/margin/apiKey",
          query: [
            apiName: Keyword.get(opts, :apiName),
            symbol: Keyword.get(opts, :symbol),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_special_key_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Special key
  Variant: Trade
  Tags: low_latency_trading, trade
  Method: GET
  Path: /sapi/v1/margin/apiKey
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def query_special_key_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/apiKey",
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

  @spec edit_ip_for_special_key_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Edit ip for Special Key
  Variant: Trade
  Tags: low_latency_trading, trade
  Method: PUT
  Path: /sapi/v1/margin/apiKey/ip
  Requires signature: true
  Required: ip
  Optional: symbol, recvWindow
  """
  def edit_ip_for_special_key_v1(client, ip, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/sapi/v1/margin/apiKey/ip",
          query: [
            symbol: Keyword.get(opts, :symbol),
            ip: ip,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_small_liability_exchange_coin_list_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Small Liability Exchange Coin List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/exchange-small-liability
  Requires signature: true
  Optional: recvWindow
  """
  def get_small_liability_exchange_coin_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/exchange-small-liability",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec small_liability_exchange_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Small Liability Exchange
  Variant: Margin
  Tags: margin
  Method: POST
  Path: /sapi/v1/margin/exchange-small-liability
  Requires signature: true
  Required: assetNames
  Optional: recvWindow
  """
  def small_liability_exchange_v1(client, assetNames, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/exchange-small-liability",
          query: [
            assetNames: assetNames,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_small_liability_exchange_history_v1(Binance.Client.t(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Small Liability Exchange History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/exchange-small-liability-history
  Requires signature: true
  Required: current, size
  Optional: startTime, endTime, recvWindow
  """
  def get_small_liability_exchange_history_v1(client, current, size, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/exchange-small-liability-history",
          query: [
            current: current,
            size: size,
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

  @spec get_force_liquidation_record_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Force Liquidation Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/forceLiquidationRec
  Requires signature: true
  Optional: startTime, endTime, isolatedSymbol, current, size, recvWindow
  """
  def get_force_liquidation_record_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/forceLiquidationRec",
          query: [
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            isolatedSymbol: Keyword.get(opts, :isolatedSymbol),
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

  @spec margin_manual_liquidation_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Margin Manual Liquidation
  Variant: Margin
  Tags: margin
  Method: POST
  Path: /sapi/v1/margin/manual-liquidation
  Requires signature: true
  Required: type
  Optional: symbol, recvWindow
  """
  def margin_manual_liquidation_v1(client, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/manual-liquidation",
          query: [
            type: type,
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

  @spec query_prevented_matches_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Prevented Matches
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/myPreventedMatches
  Requires signature: true
  Required: symbol
  Optional: preventedMatchId, orderId, fromPreventedMatchId, recvWindow, isIsolated
  """
  def query_prevented_matches_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/myPreventedMatches",
          query: [
            symbol: symbol,
            preventedMatchId: Keyword.get(opts, :preventedMatchId),
            orderId: Keyword.get(opts, :orderId),
            fromPreventedMatchId: Keyword.get(opts, :fromPreventedMatchId),
            recvWindow: Keyword.get(opts, :recvWindow),
            isIsolated: Keyword.get(opts, :isIsolated),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_margin_account_s_trade_list_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Margin Account's Trade List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/myTrades
  Requires signature: true
  Required: symbol
  Optional: isIsolated, orderId, startTime, endTime, fromId, limit, recvWindow
  """
  def query_margin_account_s_trade_list_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/myTrades",
          query: [
            symbol: symbol,
            isIsolated: Keyword.get(opts, :isIsolated),
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
  Path: /sapi/v1/margin/openOrderList
  Requires signature: true
  Optional: isIsolated, symbol, recvWindow
  """
  def query_margin_account_s_open_oco_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/openOrderList",
          query: [
            isIsolated: Keyword.get(opts, :isIsolated),
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

  @spec margin_account_cancel_all_open_orders_on_a_symbol_v1(
          Binance.Client.t(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Margin Account Cancel all Open Orders on a Symbol
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /sapi/v1/margin/openOrders
  Requires signature: true
  Required: symbol
  Optional: isIsolated, recvWindow
  """
  def margin_account_cancel_all_open_orders_on_a_symbol_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/margin/openOrders",
          query: [
            symbol: symbol,
            isIsolated: Keyword.get(opts, :isIsolated),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_margin_account_s_open_orders_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Margin Account's Open Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/openOrders
  Requires signature: true
  Optional: symbol, isIsolated, recvWindow
  """
  def query_margin_account_s_open_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/openOrders",
          query: [
            symbol: Keyword.get(opts, :symbol),
            isIsolated: Keyword.get(opts, :isIsolated),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec margin_account_cancel_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Margin Account Cancel Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /sapi/v1/margin/order
  Requires signature: true
  Required: symbol
  Optional: isIsolated, orderId, origClientOrderId, newClientOrderId, recvWindow
  """
  def margin_account_cancel_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/margin/order",
          query: [
            symbol: symbol,
            isIsolated: Keyword.get(opts, :isIsolated),
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

  @spec margin_account_new_order_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Margin Account New Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/margin/order
  Requires signature: true
  Required: symbol, side, type
  Optional: isIsolated, quantity, quoteOrderQty, price, stopPrice, newClientOrderId, icebergQty, newOrderRespType, sideEffectType, timeInForce, selfTradePreventionMode, autoRepayAtCancel, recvWindow
  """
  def margin_account_new_order_v1(client, symbol, side, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/order",
          query: [
            symbol: symbol,
            isIsolated: Keyword.get(opts, :isIsolated),
            side: side,
            type: type,
            quantity: Keyword.get(opts, :quantity),
            quoteOrderQty: Keyword.get(opts, :quoteOrderQty),
            price: Keyword.get(opts, :price),
            stopPrice: Keyword.get(opts, :stopPrice),
            newClientOrderId: Keyword.get(opts, :newClientOrderId),
            icebergQty: Keyword.get(opts, :icebergQty),
            newOrderRespType: Keyword.get(opts, :newOrderRespType),
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

  @spec query_margin_account_s_order_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Margin Account's Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/margin/order
  Requires signature: true
  Required: symbol
  Optional: isIsolated, orderId, origClientOrderId, recvWindow
  """
  def query_margin_account_s_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/order",
          query: [
            symbol: symbol,
            isIsolated: Keyword.get(opts, :isIsolated),
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
  Path: /sapi/v1/margin/order/oco
  Requires signature: true
  Required: symbol, side, quantity, price, stopPrice
  Optional: isIsolated, listClientOrderId, limitClientOrderId, limitIcebergQty, stopClientOrderId, stopLimitPrice, stopIcebergQty, stopLimitTimeInForce, newOrderRespType, sideEffectType, selfTradePreventionMode, autoRepayAtCancel, recvWindow
  """
  def margin_account_new_oco_v1(client, symbol, side, quantity, price, stopPrice, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/order/oco",
          query: [
            symbol: symbol,
            isIsolated: Keyword.get(opts, :isIsolated),
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

  @spec margin_account_new_oto_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          term(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Margin Account New OTO
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/margin/order/oto
  Requires signature: true
  Required: symbol, workingType, workingSide, workingPrice, workingQuantity, workingIcebergQty, pendingType, pendingSide, pendingQuantity
  Optional: isIsolated, listClientOrderId, newOrderRespType, sideEffectType, selfTradePreventionMode, autoRepayAtCancel, workingClientOrderId, workingTimeInForce, pendingClientOrderId, pendingPrice, pendingStopPrice, pendingTrailingDelta, pendingIcebergQty, pendingTimeInForce
  """
  def margin_account_new_oto_v1(
        client,
        symbol,
        workingType,
        workingSide,
        workingPrice,
        workingQuantity,
        workingIcebergQty,
        pendingType,
        pendingSide,
        pendingQuantity,
        opts \\ []
      ) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/order/oto",
          query: [
            symbol: symbol,
            isIsolated: Keyword.get(opts, :isIsolated),
            listClientOrderId: Keyword.get(opts, :listClientOrderId),
            newOrderRespType: Keyword.get(opts, :newOrderRespType),
            sideEffectType: Keyword.get(opts, :sideEffectType),
            selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode),
            autoRepayAtCancel: Keyword.get(opts, :autoRepayAtCancel),
            workingType: workingType,
            workingSide: workingSide,
            workingClientOrderId: Keyword.get(opts, :workingClientOrderId),
            workingPrice: workingPrice,
            workingQuantity: workingQuantity,
            workingIcebergQty: workingIcebergQty,
            workingTimeInForce: Keyword.get(opts, :workingTimeInForce),
            pendingType: pendingType,
            pendingSide: pendingSide,
            pendingClientOrderId: Keyword.get(opts, :pendingClientOrderId),
            pendingPrice: Keyword.get(opts, :pendingPrice),
            pendingStopPrice: Keyword.get(opts, :pendingStopPrice),
            pendingTrailingDelta: Keyword.get(opts, :pendingTrailingDelta),
            pendingQuantity: pendingQuantity,
            pendingIcebergQty: Keyword.get(opts, :pendingIcebergQty),
            pendingTimeInForce: Keyword.get(opts, :pendingTimeInForce),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec margin_account_new_otoco_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Margin Account New OTOCO
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /sapi/v1/margin/order/otoco
  Requires signature: true
  Required: symbol, workingType, workingSide, workingPrice, workingQuantity, pendingSide, pendingQuantity, pendingAboveType
  Optional: isIsolated, sideEffectType, autoRepayAtCancel, listClientOrderId, newOrderRespType, selfTradePreventionMode, workingClientOrderId, workingIcebergQty, workingTimeInForce, pendingAboveClientOrderId, pendingAbovePrice, pendingAboveStopPrice, pendingAboveTrailingDelta, pendingAboveIcebergQty, pendingAboveTimeInForce, pendingBelowType, pendingBelowClientOrderId, pendingBelowPrice, pendingBelowStopPrice, pendingBelowTrailingDelta, pendingBelowIcebergQty, pendingBelowTimeInForce
  """
  def margin_account_new_otoco_v1(
        client,
        symbol,
        workingType,
        workingSide,
        workingPrice,
        workingQuantity,
        pendingSide,
        pendingQuantity,
        pendingAboveType,
        opts \\ []
      ) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/margin/order/otoco",
          query: [
            symbol: symbol,
            isIsolated: Keyword.get(opts, :isIsolated),
            sideEffectType: Keyword.get(opts, :sideEffectType),
            autoRepayAtCancel: Keyword.get(opts, :autoRepayAtCancel),
            listClientOrderId: Keyword.get(opts, :listClientOrderId),
            newOrderRespType: Keyword.get(opts, :newOrderRespType),
            selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode),
            workingType: workingType,
            workingSide: workingSide,
            workingClientOrderId: Keyword.get(opts, :workingClientOrderId),
            workingPrice: workingPrice,
            workingQuantity: workingQuantity,
            workingIcebergQty: Keyword.get(opts, :workingIcebergQty),
            workingTimeInForce: Keyword.get(opts, :workingTimeInForce),
            pendingSide: pendingSide,
            pendingQuantity: pendingQuantity,
            pendingAboveType: pendingAboveType,
            pendingAboveClientOrderId: Keyword.get(opts, :pendingAboveClientOrderId),
            pendingAbovePrice: Keyword.get(opts, :pendingAbovePrice),
            pendingAboveStopPrice: Keyword.get(opts, :pendingAboveStopPrice),
            pendingAboveTrailingDelta: Keyword.get(opts, :pendingAboveTrailingDelta),
            pendingAboveIcebergQty: Keyword.get(opts, :pendingAboveIcebergQty),
            pendingAboveTimeInForce: Keyword.get(opts, :pendingAboveTimeInForce),
            pendingBelowType: Keyword.get(opts, :pendingBelowType),
            pendingBelowClientOrderId: Keyword.get(opts, :pendingBelowClientOrderId),
            pendingBelowPrice: Keyword.get(opts, :pendingBelowPrice),
            pendingBelowStopPrice: Keyword.get(opts, :pendingBelowStopPrice),
            pendingBelowTrailingDelta: Keyword.get(opts, :pendingBelowTrailingDelta),
            pendingBelowIcebergQty: Keyword.get(opts, :pendingBelowIcebergQty),
            pendingBelowTimeInForce: Keyword.get(opts, :pendingBelowTimeInForce),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec margin_account_cancel_oco_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Margin Account Cancel OCO
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /sapi/v1/margin/orderList
  Requires signature: true
  Required: symbol
  Optional: isIsolated, orderListId, listClientOrderId, newClientOrderId, recvWindow
  """
  def margin_account_cancel_oco_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/sapi/v1/margin/orderList",
          query: [
            symbol: symbol,
            isIsolated: Keyword.get(opts, :isIsolated),
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
  Path: /sapi/v1/margin/orderList
  Requires signature: true
  Optional: isIsolated, symbol, orderListId, origClientOrderId, recvWindow
  """
  def query_margin_account_s_oco_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/orderList",
          query: [
            isIsolated: Keyword.get(opts, :isIsolated),
            symbol: Keyword.get(opts, :symbol),
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

  @spec query_current_margin_order_count_usage_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Current Margin Order Count Usage
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /sapi/v1/margin/rateLimit/order
  Requires signature: true
  Optional: isIsolated, symbol, recvWindow
  """
  def query_current_margin_order_count_usage_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/margin/rateLimit/order",
          query: [
            isIsolated: Keyword.get(opts, :isIsolated),
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
end
