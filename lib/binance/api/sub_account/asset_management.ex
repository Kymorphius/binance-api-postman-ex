defmodule Binance.API.SubAccount.AssetManagement do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec get_sub_account_deposit_address_v1(Binance.Client.t(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Sub-account Deposit Address
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/capital/deposit/subAddress
  Requires signature: true
  Required: email, coin
  Optional: network, amount, recvWindow
  """
  def get_sub_account_deposit_address_v1(client, email, coin, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/deposit/subAddress",
          query: [
            email: email,
            coin: coin,
            network: Keyword.get(opts, :network),
            amount: Keyword.get(opts, :amount),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_sub_account_deposit_history_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Sub-account Deposit History
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/capital/deposit/subHisrec
  Requires signature: true
  Required: email
  Optional: coin, status, startTime, endTime, limit, offset, recvWindow, txId
  """
  def get_sub_account_deposit_history_v1(client, email, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/deposit/subHisrec",
          query: [
            email: email,
            coin: Keyword.get(opts, :coin),
            status: Keyword.get(opts, :status),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            limit: Keyword.get(opts, :limit),
            offset: Keyword.get(opts, :offset),
            recvWindow: Keyword.get(opts, :recvWindow),
            txId: Keyword.get(opts, :txId),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_detail_on_sub_account_s_futures_account_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Detail on Sub-account's Futures Account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/futures/account
  Requires signature: true
  Required: email
  Optional: recvWindow
  """
  def get_detail_on_sub_account_s_futures_account_v1(client, email, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/account",
          query: [email: email, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_summary_of_sub_account_s_futures_account_v1(
          Binance.Client.t(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Summary of Sub-account's Futures Account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/futures/accountSummary
  Requires signature: true
  Required: page, limit
  Optional: recvWindow
  """
  def get_summary_of_sub_account_s_futures_account_v1(client, page, limit, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/accountSummary",
          query: [
            page: page,
            limit: limit,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_sub_account_futures_asset_transfer_history_v1(
          Binance.Client.t(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Query Sub-account Futures Asset Transfer History
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/futures/internalTransfer
  Requires signature: true
  Required: email, futuresType
  Optional: startTime, endTime, page, limit, recvWindow
  """
  def query_sub_account_futures_asset_transfer_history_v1(client, email, futuresType, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/internalTransfer",
          query: [
            email: email,
            futuresType: futuresType,
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

  @spec sub_account_futures_asset_transfer_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Sub-account Futures Asset Transfer
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/futures/internalTransfer
  Requires signature: true
  Required: fromEmail, toEmail, futuresType, asset, amount
  Optional: recvWindow
  """
  def sub_account_futures_asset_transfer_v1(
        client,
        fromEmail,
        toEmail,
        futuresType,
        asset,
        amount,
        opts \\ []
      ) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/internalTransfer",
          query: [
            fromEmail: fromEmail,
            toEmail: toEmail,
            futuresType: futuresType,
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

  @spec get_move_position_history_for_sub_account_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Move Position History for Sub-account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/futures/move-position
  Requires signature: true
  Required: symbol, page, row
  Optional: startTime, endTime, recvWindow
  """
  def get_move_position_history_for_sub_account_v1(client, symbol, page, row, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/move-position",
          query: [
            symbol: symbol,
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            page: page,
            row: row,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec move_position_for_sub_account_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Move Position for Sub-account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/futures/move-position
  Requires signature: true
  Required: fromUserEmail, toUserEmail, productType, orderArgs
  Optional: recvWindow
  """
  def move_position_for_sub_account_v1(
        client,
        fromUserEmail,
        toUserEmail,
        productType,
        orderArgs,
        opts \\ []
      ) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/move-position",
          query: [
            fromUserEmail: fromUserEmail,
            toUserEmail: toUserEmail,
            productType: productType,
            orderArgs: orderArgs,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec futures_transfer_for_sub_account_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Futures Transfer for Sub-account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/futures/transfer
  Requires signature: true
  Required: email, asset, amount, type
  Optional: recvWindow
  """
  def futures_transfer_for_sub_account_v1(client, email, asset, amount, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/transfer",
          query: [
            email: email,
            asset: asset,
            amount: amount,
            type: type,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_detail_on_sub_account_s_margin_account_v1(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Detail on Sub-account's Margin Account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/margin/account
  Requires signature: true
  Required: email
  Optional: recvWindow
  """
  def get_detail_on_sub_account_s_margin_account_v1(client, email, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/margin/account",
          query: [email: email, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec get_summary_of_sub_account_s_margin_account_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Summary of Sub-account's Margin Account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/margin/accountSummary
  Requires signature: true
  Optional: recvWindow
  """
  def get_summary_of_sub_account_s_margin_account_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/margin/accountSummary",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec margin_transfer_for_sub_account_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Margin Transfer for Sub-account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/margin/transfer
  Requires signature: true
  Required: email, asset, amount, type
  Optional: recvWindow
  """
  def margin_transfer_for_sub_account_v1(client, email, asset, amount, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/margin/transfer",
          query: [
            email: email,
            asset: asset,
            amount: amount,
            type: type,
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_sub_account_spot_assets_summary_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Sub-account Spot Assets Summary
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/spotSummary
  Requires signature: true
  Optional: email, page, size, recvWindow
  """
  def query_sub_account_spot_assets_summary_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/spotSummary",
          query: [
            email: Keyword.get(opts, :email),
            page: Keyword.get(opts, :page),
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

  @spec query_sub_account_spot_asset_transfer_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Sub-account Spot Asset Transfer History
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/sub/transfer/history
  Requires signature: true
  Optional: fromEmail, toEmail, startTime, endTime, page, limit, recvWindow
  """
  def query_sub_account_spot_asset_transfer_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/sub/transfer/history",
          query: [
            fromEmail: Keyword.get(opts, :fromEmail),
            toEmail: Keyword.get(opts, :toEmail),
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

  @spec transfer_to_master_v1(Binance.Client.t(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Transfer to Master
  Variant: User Data
  Tags: for_sub_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/transfer/subToMaster
  Requires signature: true
  Required: asset, amount
  Optional: recvWindow
  """
  def transfer_to_master_v1(client, asset, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/transfer/subToMaster",
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

  @spec transfer_to_sub_account_of_same_master_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Transfer to Sub-account of Same Master
  Variant: User Data
  Tags: for_sub_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/transfer/subToSub
  Requires signature: true
  Required: toEmail, asset, amount
  Optional: recvWindow
  """
  def transfer_to_sub_account_of_same_master_v1(client, toEmail, asset, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/transfer/subToSub",
          query: [
            toEmail: toEmail,
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

  @spec sub_account_transfer_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Sub-account Transfer History
  Variant: User Data
  Tags: for_sub_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/transfer/subUserHistory
  Requires signature: true
  Optional: asset, type, startTime, endTime, limit, returnFailHistory, recvWindow
  """
  def sub_account_transfer_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/transfer/subUserHistory",
          query: [
            asset: Keyword.get(opts, :asset),
            type: Keyword.get(opts, :type),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            limit: Keyword.get(opts, :limit),
            returnFailHistory: Keyword.get(opts, :returnFailHistory),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_universal_transfer_history_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Universal Transfer History
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/universalTransfer
  Requires signature: true
  Optional: fromEmail, toEmail, clientTranId, startTime, endTime, page, limit, recvWindow
  """
  def query_universal_transfer_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/universalTransfer",
          query: [
            fromEmail: Keyword.get(opts, :fromEmail),
            toEmail: Keyword.get(opts, :toEmail),
            clientTranId: Keyword.get(opts, :clientTranId),
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

  @spec universal_transfer_v1(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Universal Transfer
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/universalTransfer
  Requires signature: true
  Required: fromAccountType, toAccountType, asset, amount
  Optional: fromEmail, toEmail, clientTranId, symbol, recvWindow
  """
  def universal_transfer_v1(client, fromAccountType, toAccountType, asset, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/universalTransfer",
          query: [
            fromEmail: Keyword.get(opts, :fromEmail),
            toEmail: Keyword.get(opts, :toEmail),
            fromAccountType: fromAccountType,
            toAccountType: toAccountType,
            clientTranId: Keyword.get(opts, :clientTranId),
            symbol: Keyword.get(opts, :symbol),
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

  @spec get_detail_on_sub_account_s_futures_account_v2(
          Binance.Client.t(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Detail on Sub-account's Futures Account V2
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v2/sub-account/futures/account
  Requires signature: true
  Required: email, futuresType
  Optional: recvWindow
  """
  def get_detail_on_sub_account_s_futures_account_v2(client, email, futuresType, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/sub-account/futures/account",
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

  @spec get_summary_of_sub_account_s_futures_account_v2(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Get Summary of Sub-account's Futures Account V2
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v2/sub-account/futures/accountSummary
  Requires signature: true
  Required: futuresType
  Optional: page, limit, recvWindow
  """
  def get_summary_of_sub_account_s_futures_account_v2(client, futuresType, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/sub-account/futures/accountSummary",
          query: [
            futuresType: futuresType,
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

  @spec query_sub_account_assets_v3(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Sub-account Assets
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v3/sub-account/assets
  Requires signature: true
  Required: email
  Optional: recvWindow
  """
  def query_sub_account_assets_v3(client, email, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v3/sub-account/assets",
          query: [email: email, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec query_sub_account_assets_v4(Binance.Client.t(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Query Sub-account Assets
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v4/sub-account/assets
  Requires signature: true
  Required: email
  Optional: recvWindow
  """
  def query_sub_account_assets_v4(client, email, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v4/sub-account/assets",
          query: [email: email, recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end
end
