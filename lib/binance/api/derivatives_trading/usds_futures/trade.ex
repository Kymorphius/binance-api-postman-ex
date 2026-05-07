defmodule Binance.API.DerivativesTrading.UsdsFutures.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://fapi.binance.com", testnet_url: "https://testnet.binancefuture.com", demo_url: "https://demo-fapi.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec position_adl_quantile_estimation_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Position ADL Quantile Estimation
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/adlQuantile
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def position_adl_quantile_estimation_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/adlQuantile",
          query: [symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec cancel_all_algo_open_orders_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel All Algo Open Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /fapi/v1/algoOpenOrders
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def cancel_all_algo_open_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/fapi/v1/algoOpenOrders",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec cancel_algo_order_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel Algo Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /fapi/v1/algoOrder
  Requires signature: true
  Optional: algoId, clientAlgoId, recvWindow
  """
  def cancel_algo_order_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/fapi/v1/algoOrder",
          query: [algoId: Keyword.get(opts, :algoId), clientAlgoId: Keyword.get(opts, :clientAlgoId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec new_algo_order_v1(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  New Algo Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/algoOrder
  Requires signature: true
  Required: algoType, symbol, side, type
  Optional: positionSide, timeInForce, quantity, price, triggerPrice, workingType, priceMatch, closePosition, priceProtect, reduceOnly, activatePrice, callbackRate, clientAlgoId, newOrderRespType, selfTradePreventionMode, goodTillDate, recvWindow
  """
  def new_algo_order_v1(client, algoType, symbol, side, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/algoOrder",
          query: [algoType: algoType, symbol: symbol, side: side, positionSide: Keyword.get(opts, :positionSide), type: type, timeInForce: Keyword.get(opts, :timeInForce), quantity: Keyword.get(opts, :quantity), price: Keyword.get(opts, :price), triggerPrice: Keyword.get(opts, :triggerPrice), workingType: Keyword.get(opts, :workingType), priceMatch: Keyword.get(opts, :priceMatch), closePosition: Keyword.get(opts, :closePosition), priceProtect: Keyword.get(opts, :priceProtect), reduceOnly: Keyword.get(opts, :reduceOnly), activatePrice: Keyword.get(opts, :activatePrice), callbackRate: Keyword.get(opts, :callbackRate), clientAlgoId: Keyword.get(opts, :clientAlgoId), newOrderRespType: Keyword.get(opts, :newOrderRespType), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), goodTillDate: Keyword.get(opts, :goodTillDate), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_algo_order_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Algo Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/algoOrder
  Requires signature: true
  Optional: algoId, clientAlgoId, recvWindow
  """
  def query_algo_order_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/algoOrder",
          query: [algoId: Keyword.get(opts, :algoId), clientAlgoId: Keyword.get(opts, :clientAlgoId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_all_algo_orders_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query All Algo Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/allAlgoOrders
  Requires signature: true
  Required: symbol
  Optional: algoId, startTime, endTime, limit, recvWindow
  """
  def query_all_algo_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/allAlgoOrders",
          query: [symbol: symbol, algoId: Keyword.get(opts, :algoId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec cancel_all_open_orders_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel All Open Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /fapi/v1/allOpenOrders
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def cancel_all_open_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/fapi/v1/allOpenOrders",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec all_orders_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  All Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/allOrders
  Requires signature: true
  Required: symbol
  Optional: orderId, startTime, endTime, limit, recvWindow
  """
  def all_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/allOrders",
          query: [symbol: symbol, orderId: Keyword.get(opts, :orderId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec cancel_multiple_orders_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel Multiple Orders
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /fapi/v1/batchOrders
  Requires signature: true
  Required: symbol
  Optional: orderIdList, origClientOrderIdList, recvWindow
  """
  def cancel_multiple_orders_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/fapi/v1/batchOrders",
          query: [symbol: symbol, orderIdList: Keyword.get(opts, :orderIdList), origClientOrderIdList: Keyword.get(opts, :origClientOrderIdList), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec modify_multiple_orders_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Modify Multiple Orders
  Variant: Trade
  Tags: trade
  Method: PUT
  Path: /fapi/v1/batchOrders
  Requires signature: true
  Required: batchOrders
  Optional: recvWindow
  """
  def modify_multiple_orders_v1(client, batchOrders, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/fapi/v1/batchOrders",
          query: [batchOrders: batchOrders, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec place_multiple_orders_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Place Multiple Orders
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/batchOrders
  Requires signature: true
  Required: batchOrders
  Optional: recvWindow
  """
  def place_multiple_orders_v1(client, batchOrders, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/batchOrders",
          query: [batchOrders: batchOrders, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec auto_cancel_all_open_orders_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Auto-Cancel All Open Orders
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/countdownCancelAll
  Requires signature: true
  Required: symbol, countdownTime
  Optional: recvWindow
  """
  def auto_cancel_all_open_orders_v1(client, symbol, countdownTime, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/countdownCancelAll",
          query: [symbol: symbol, countdownTime: countdownTime, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec user_s_force_orders_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  User's Force Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/forceOrders
  Requires signature: true
  Optional: symbol, autoCloseType, startTime, endTime, limit, recvWindow
  """
  def user_s_force_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/forceOrders",
          query: [symbol: Keyword.get(opts, :symbol), autoCloseType: Keyword.get(opts, :autoCloseType), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec change_initial_leverage_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Change Initial Leverage
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/leverage
  Requires signature: true
  Required: symbol, leverage
  Optional: recvWindow
  """
  def change_initial_leverage_v1(client, symbol, leverage, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/leverage",
          query: [symbol: symbol, leverage: leverage, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec change_margin_type_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Change Margin Type
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/marginType
  Requires signature: true
  Required: symbol, marginType
  Optional: recvWindow
  """
  def change_margin_type_v1(client, symbol, marginType, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/marginType",
          query: [symbol: symbol, marginType: marginType, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec change_multi_assets_mode_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Change Multi-Assets Mode
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/multiAssetsMargin
  Requires signature: true
  Required: multiAssetsMargin
  Optional: recvWindow
  """
  def change_multi_assets_mode_v1(client, multiAssetsMargin, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/multiAssetsMargin",
          query: [multiAssetsMargin: multiAssetsMargin, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec current_all_algo_open_orders_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Current All Algo Open Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/openAlgoOrders
  Requires signature: true
  Optional: algoType, symbol, algoId, recvWindow
  """
  def current_all_algo_open_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/openAlgoOrders",
          query: [algoType: Keyword.get(opts, :algoType), symbol: Keyword.get(opts, :symbol), algoId: Keyword.get(opts, :algoId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_current_open_order_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Current Open Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/openOrder
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, recvWindow
  """
  def query_current_open_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/openOrder",
          query: [symbol: symbol, orderId: Keyword.get(opts, :orderId), origClientOrderId: Keyword.get(opts, :origClientOrderId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec current_all_open_orders_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Current All Open Orders
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/openOrders
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def current_all_open_orders_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/openOrders",
          query: [symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec cancel_order_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Cancel Order
  Variant: Trade
  Tags: trade
  Method: DELETE
  Path: /fapi/v1/order
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, recvWindow
  """
  def cancel_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "DELETE",
          base_url: base_url,
          url: "/fapi/v1/order",
          query: [symbol: symbol, orderId: Keyword.get(opts, :orderId), origClientOrderId: Keyword.get(opts, :origClientOrderId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec modify_order_v1(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Modify Order
  Variant: Trade
  Tags: trade
  Method: PUT
  Path: /fapi/v1/order
  Requires signature: true
  Required: symbol, side, quantity, price
  Optional: orderId, origClientOrderId, priceMatch, recvWindow
  """
  def modify_order_v1(client, symbol, side, quantity, price, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/fapi/v1/order",
          query: [orderId: Keyword.get(opts, :orderId), origClientOrderId: Keyword.get(opts, :origClientOrderId), symbol: symbol, side: side, quantity: quantity, price: price, priceMatch: Keyword.get(opts, :priceMatch), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec new_order_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  New Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/order
  Requires signature: true
  Required: symbol, side, type
  Optional: positionSide, timeInForce, quantity, reduceOnly, price, newClientOrderId, newOrderRespType, priceMatch, selfTradePreventionMode, goodTillDate, recvWindow
  """
  def new_order_v1(client, symbol, side, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/order",
          query: [symbol: symbol, side: side, positionSide: Keyword.get(opts, :positionSide), type: type, timeInForce: Keyword.get(opts, :timeInForce), quantity: Keyword.get(opts, :quantity), reduceOnly: Keyword.get(opts, :reduceOnly), price: Keyword.get(opts, :price), newClientOrderId: Keyword.get(opts, :newClientOrderId), newOrderRespType: Keyword.get(opts, :newOrderRespType), priceMatch: Keyword.get(opts, :priceMatch), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), goodTillDate: Keyword.get(opts, :goodTillDate), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_order_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Order
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/order
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, recvWindow
  """
  def query_order_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/order",
          query: [symbol: symbol, orderId: Keyword.get(opts, :orderId), origClientOrderId: Keyword.get(opts, :origClientOrderId), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec test_order_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Test Order
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/order/test
  Requires signature: true
  Required: symbol, side, type
  Optional: positionSide, timeInForce, quantity, reduceOnly, price, newClientOrderId, stopPrice, closePosition, activationPrice, callbackRate, workingType, priceProtect, newOrderRespType, priceMatch, selfTradePreventionMode, goodTillDate, recvWindow
  """
  def test_order_v1(client, symbol, side, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/order/test",
          query: [symbol: symbol, side: side, positionSide: Keyword.get(opts, :positionSide), type: type, timeInForce: Keyword.get(opts, :timeInForce), quantity: Keyword.get(opts, :quantity), reduceOnly: Keyword.get(opts, :reduceOnly), price: Keyword.get(opts, :price), newClientOrderId: Keyword.get(opts, :newClientOrderId), stopPrice: Keyword.get(opts, :stopPrice), closePosition: Keyword.get(opts, :closePosition), activationPrice: Keyword.get(opts, :activationPrice), callbackRate: Keyword.get(opts, :callbackRate), workingType: Keyword.get(opts, :workingType), priceProtect: Keyword.get(opts, :priceProtect), newOrderRespType: Keyword.get(opts, :newOrderRespType), priceMatch: Keyword.get(opts, :priceMatch), selfTradePreventionMode: Keyword.get(opts, :selfTradePreventionMode), goodTillDate: Keyword.get(opts, :goodTillDate), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_order_modify_history_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Order Modify History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/orderAmendment
  Requires signature: true
  Required: symbol
  Optional: orderId, origClientOrderId, startTime, endTime, limit, recvWindow
  """
  def get_order_modify_history_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/orderAmendment",
          query: [symbol: symbol, orderId: Keyword.get(opts, :orderId), origClientOrderId: Keyword.get(opts, :origClientOrderId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec modify_isolated_position_margin_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Modify Isolated Position Margin
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/positionMargin
  Requires signature: true
  Required: symbol, amount, type
  Optional: positionSide, recvWindow
  """
  def modify_isolated_position_margin_v1(client, symbol, amount, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/positionMargin",
          query: [symbol: symbol, positionSide: Keyword.get(opts, :positionSide), amount: amount, type: type, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_position_margin_change_history_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Position Margin Change History
  Variant: Trade
  Tags: trade
  Method: GET
  Path: /fapi/v1/positionMargin/history
  Requires signature: true
  Required: symbol
  Optional: type, startTime, endTime, limit, recvWindow
  """
  def get_position_margin_change_history_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/positionMargin/history",
          query: [symbol: symbol, type: Keyword.get(opts, :type), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec change_position_mode_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Change Position Mode
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/positionSide/dual
  Requires signature: true
  Required: dualSidePosition
  Optional: recvWindow
  """
  def change_position_mode_v1(client, dualSidePosition, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/positionSide/dual",
          query: [dualSidePosition: dualSidePosition, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec futures_tradfi_perps_contract_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Futures TradFi Perps Contract
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /fapi/v1/stock/contract
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
          url: "/fapi/v1/stock/contract",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec account_trade_list_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Account Trade List
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/userTrades
  Requires signature: true
  Required: symbol
  Optional: orderId, startTime, endTime, fromId, limit, recvWindow
  """
  def account_trade_list_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/userTrades",
          query: [symbol: symbol, orderId: Keyword.get(opts, :orderId), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), fromId: Keyword.get(opts, :fromId), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec position_information_v2(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Position Information V2
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v2/positionRisk
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def position_information_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v2/positionRisk",
          query: [symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec position_information_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Position Information V3
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v3/positionRisk
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def position_information_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v3/positionRisk",
          query: [symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end