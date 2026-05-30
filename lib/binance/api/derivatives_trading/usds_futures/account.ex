defmodule Binance.API.DerivativesTrading.UsdsFutures.Account do
  @moduledoc false

  @base_urls %{
    prod_url: "https://fapi.binance.com",
    testnet_url: "https://testnet.binancefuture.com",
    demo_url: "https://demo-fapi.binance.com"
  }

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec futures_account_configuration_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Futures Account Configuration
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/accountConfig
  Requires signature: true
  Optional: recvWindow
  """
  def futures_account_configuration_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/accountConfig",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec futures_trading_quantitative_rules_indicators_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Futures Trading Quantitative Rules Indicators
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/apiTradingStatus
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def futures_trading_quantitative_rules_indicators_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/apiTradingStatus",
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

  @spec user_commission_rate_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  User Commission Rate
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/commissionRate
  Requires signature: true
  Required: symbol
  Optional: recvWindow
  """
  def user_commission_rate_v1(client, symbol, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/commissionRate",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_bnb_burn_status_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get BNB Burn Status
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/feeBurn
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
          url: "/fapi/v1/feeBurn",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec toggle_bnb_burn_on_futures_trade_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Toggle BNB Burn On Futures Trade
  Variant: Trade
  Tags: trade
  Method: POST
  Path: /fapi/v1/feeBurn
  Requires signature: true
  Required: feeBurn
  Optional: recvWindow
  """
  def toggle_bnb_burn_on_futures_trade_v1(client, feeBurn, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/fapi/v1/feeBurn",
          query: [feeBurn: feeBurn, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_income_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Income History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/income
  Requires signature: true
  Optional: symbol, incomeType, startTime, endTime, page, limit, recvWindow
  """
  def get_income_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/income",
          query: [
            symbol: Keyword.get(opts, :symbol),
            incomeType: Keyword.get(opts, :incomeType),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            page: Keyword.get(opts, :page),
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

  @spec get_download_id_for_futures_transaction_history_v1(
          Binance.Client.t(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Download Id For Futures Transaction History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/income/asyn
  Requires signature: true
  Required: startTime, endTime
  Optional: recvWindow
  """
  def get_download_id_for_futures_transaction_history_v1(client, startTime, endTime, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/income/asyn",
          query: [
            startTime: startTime,
            endTime: endTime,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_futures_transaction_history_download_link_by_id_v1(
          Binance.Client.t(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Futures Transaction History Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/income/asyn/id
  Requires signature: true
  Required: downloadId
  Optional: recvWindow
  """
  def get_futures_transaction_history_download_link_by_id_v1(client, downloadId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/income/asyn/id",
          query: [
            downloadId: downloadId,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec notional_and_leverage_brackets_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Notional and Leverage Brackets
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/leverageBracket
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def notional_and_leverage_brackets_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/leverageBracket",
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

  @spec get_current_multi_assets_mode_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Current Multi-Assets Mode
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/multiAssetsMargin
  Requires signature: true
  Optional: recvWindow
  """
  def get_current_multi_assets_mode_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/multiAssetsMargin",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_download_id_for_futures_order_history_v1(
          Binance.Client.t(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Download Id For Futures Order History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/order/asyn
  Requires signature: true
  Required: startTime, endTime
  Optional: recvWindow
  """
  def get_download_id_for_futures_order_history_v1(client, startTime, endTime, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/order/asyn",
          query: [
            startTime: startTime,
            endTime: endTime,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_futures_order_history_download_link_by_id_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Futures Order History Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/order/asyn/id
  Requires signature: true
  Required: downloadId
  Optional: recvWindow
  """
  def get_futures_order_history_download_link_by_id_v1(client, downloadId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/order/asyn/id",
          query: [
            downloadId: downloadId,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_current_position_mode_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Current Position Mode
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/positionSide/dual
  Requires signature: true
  Optional: recvWindow
  """
  def get_current_position_mode_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/positionSide/dual",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_user_rate_limit_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query User Rate Limit
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/rateLimit/order
  Requires signature: true
  Optional: recvWindow
  """
  def query_user_rate_limit_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/rateLimit/order",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec symbol_configuration_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Symbol Configuration
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/symbolConfig
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def symbol_configuration_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/symbolConfig",
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

  @spec get_download_id_for_futures_trade_history_v1(
          Binance.Client.t(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Download Id For Futures Trade History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/trade/asyn
  Requires signature: true
  Required: startTime, endTime
  Optional: recvWindow
  """
  def get_download_id_for_futures_trade_history_v1(client, startTime, endTime, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/trade/asyn",
          query: [
            startTime: startTime,
            endTime: endTime,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_futures_trade_download_link_by_id_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Futures Trade Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v1/trade/asyn/id
  Requires signature: true
  Required: downloadId
  Optional: recvWindow
  """
  def get_futures_trade_download_link_by_id_v1(client, downloadId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v1/trade/asyn/id",
          query: [
            downloadId: downloadId,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec account_information_v2(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Account Information V2
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v2/account
  Requires signature: true
  Optional: recvWindow
  """
  def account_information_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v2/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec futures_account_balance_v2(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Futures Account Balance V2
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v2/balance
  Requires signature: true
  Optional: recvWindow
  """
  def futures_account_balance_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v2/balance",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec account_information_v3(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Account Information V3
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v3/account
  Requires signature: true
  Optional: recvWindow
  """
  def account_information_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v3/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec futures_account_balance_v3(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Futures Account Balance V3
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /fapi/v3/balance
  Requires signature: true
  Optional: recvWindow
  """
  def futures_account_balance_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/fapi/v3/balance",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end
end
