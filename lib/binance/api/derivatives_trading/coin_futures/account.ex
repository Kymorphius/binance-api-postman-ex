defmodule Binance.API.DerivativesTrading.CoinFutures.Account do
  @moduledoc false

  @base_urls %{prod_url: "https://dapi.binance.com", testnet_url: "https://testnet.binancefuture.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec account_information_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Account Information
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/account
  Requires signature: true
  Optional: recvWindow
  """
  def account_information_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/account",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec futures_account_balance_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Futures Account Balance
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/balance
  Requires signature: true
  Optional: recvWindow
  """
  def futures_account_balance_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/balance",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec user_commission_rate_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  User Commission Rate
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/commissionRate
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
          url: "/dapi/v1/commissionRate",
          query: [symbol: symbol, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
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
  Path: /dapi/v1/income
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
          url: "/dapi/v1/income",
          query: [symbol: Keyword.get(opts, :symbol), incomeType: Keyword.get(opts, :incomeType), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), page: Keyword.get(opts, :page), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_download_id_for_futures_transaction_history_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Download Id For Futures Transaction History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/income/asyn
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
          url: "/dapi/v1/income/asyn",
          query: [startTime: startTime, endTime: endTime, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_futures_transaction_history_download_link_by_id_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Futures Transaction History Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/income/asyn/id
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
          url: "/dapi/v1/income/asyn/id",
          query: [downloadId: downloadId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec notional_bracket_for_pair_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Notional Bracket for Pair
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/leverageBracket
  Requires signature: true
  Optional: pair, recvWindow
  """
  def notional_bracket_for_pair_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v1/leverageBracket",
          query: [pair: Keyword.get(opts, :pair), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_download_id_for_futures_order_history_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Download Id For Futures Order History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/order/asyn
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
          url: "/dapi/v1/order/asyn",
          query: [startTime: startTime, endTime: endTime, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_futures_order_history_download_link_by_id_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Futures Order History Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/order/asyn/id
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
          url: "/dapi/v1/order/asyn/id",
          query: [downloadId: downloadId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_current_position_mode_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Current Position Mode
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/positionSide/dual
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
          url: "/dapi/v1/positionSide/dual",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_download_id_for_futures_trade_history_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Download Id For Futures Trade History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/trade/asyn
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
          url: "/dapi/v1/trade/asyn",
          query: [startTime: startTime, endTime: endTime, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_futures_trade_download_link_by_id_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Futures Trade Download Link by Id
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v1/trade/asyn/id
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
          url: "/dapi/v1/trade/asyn/id",
          query: [downloadId: downloadId, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec notional_bracket_for_symbol_v2(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Notional Bracket for Symbol
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /dapi/v2/leverageBracket
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def notional_bracket_for_symbol_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/dapi/v2/leverageBracket",
          query: [symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end