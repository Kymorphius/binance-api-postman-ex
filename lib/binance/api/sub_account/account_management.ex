defmodule Binance.API.SubAccount.AccountManagement do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec enable_options_for_sub_account_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Enable Options for Sub-account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/eoptions/enable
  Requires signature: true
  Required: email
  Optional: recvWindow
  """
  def enable_options_for_sub_account_v1(client, email, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/eoptions/enable",
          query: [email: email, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec enable_futures_for_sub_account_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Enable Futures for Sub-account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/futures/enable
  Requires signature: true
  Required: email
  Optional: recvWindow
  """
  def enable_futures_for_sub_account_v1(client, email, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/enable",
          query: [email: email, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_futures_position_risk_of_sub_account_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Futures Position-Risk of Sub-account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/futures/positionRisk
  Requires signature: true
  Required: email
  Optional: recvWindow
  """
  def get_futures_position_risk_of_sub_account_v1(client, email, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/positionRisk",
          query: [email: email, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_sub_account_list_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Sub-account List
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/list
  Requires signature: true
  Optional: email, isFreeze, page, limit, recvWindow
  """
  def query_sub_account_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/list",
          query: [
            email: Keyword.get(opts, :email),
            isFreeze: Keyword.get(opts, :isFreeze),
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

  @spec get_sub_account_s_status_on_margin_or_futures_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Sub-account's Status on Margin Or Futures
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/status
  Requires signature: true
  Optional: email, recvWindow
  """
  def get_sub_account_s_status_on_margin_or_futures_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/status",
          query: [
            email: Keyword.get(opts, :email),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_sub_account_transaction_statistics_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Sub-account Transaction Statistics
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/transaction-statistics
  Requires signature: true
  Optional: email, recvWindow
  """
  def query_sub_account_transaction_statistics_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/transaction-statistics",
          query: [
            email: Keyword.get(opts, :email),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec create_a_virtual_sub_account_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Create a Virtual Sub-account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/virtualSubAccount
  Requires signature: true
  Required: subAccountString
  Optional: recvWindow
  """
  def create_a_virtual_sub_account_v1(client, subAccountString, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/virtualSubAccount",
          query: [
            subAccountString: subAccountString,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_futures_position_risk_of_sub_account_v2(
          Binance.Client.t(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Futures Position-Risk of Sub-account V2
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v2/sub-account/futures/positionRisk
  Requires signature: true
  Required: email, futuresType
  Optional: recvWindow
  """
  def get_futures_position_risk_of_sub_account_v2(client, email, futuresType, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/sub-account/futures/positionRisk",
          query: [
            email: email,
            futuresType: futuresType,
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
