defmodule Binance.API.DualInvestment.Trade do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec check_dual_investment_accounts_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Check Dual Investment accounts
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/dci/product/accounts
  Requires signature: true
  Optional: recvWindow
  """
  def check_dual_investment_accounts_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/dci/product/accounts",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec change_auto_compound_status_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Change Auto-Compound status
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/dci/product/auto_compound/edit-status
  Requires signature: true
  Required: positionId
  Optional: autoCompoundPlan, recvWindow
  """
  def change_auto_compound_status_v1(client, positionId, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/dci/product/auto_compound/edit-status",
          query: [
            positionId: positionId,
            autoCompoundPlan: Keyword.get(opts, :autoCompoundPlan),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_dual_investment_positions_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Dual Investment positions
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/dci/product/positions
  Requires signature: true
  Optional: status, pageSize, pageIndex, recvWindow
  """
  def get_dual_investment_positions_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/dci/product/positions",
          query: [
            status: Keyword.get(opts, :status),
            pageSize: Keyword.get(opts, :pageSize),
            pageIndex: Keyword.get(opts, :pageIndex),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec subscribe_dual_investment_products_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Subscribe Dual Investment products
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/dci/product/subscribe
  Requires signature: true
  Required: id, orderId, depositAmount, autoCompoundPlan
  Optional: recvWindow
  """
  def subscribe_dual_investment_products_v1(
        client,
        id,
        orderId,
        depositAmount,
        autoCompoundPlan,
        opts \\ []
      ) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/dci/product/subscribe",
          query: [
            id: id,
            orderId: orderId,
            depositAmount: depositAmount,
            autoCompoundPlan: autoCompoundPlan,
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
