defmodule Binance.API.SubAccount.AssetManagement do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Get Sub-account Deposit Address
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/capital/deposit/subAddress
  Requires signature: true
  """
  def get_sub_account_deposit_address_v1(client, email, coin, network: network, amount: amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/deposit/subAddress",
          query: [email: email, coin: coin, network: network, amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Sub-account Deposit History
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/capital/deposit/subHisrec
  Requires signature: true
  """
  def get_sub_account_deposit_history_v1(client, email, coin: coin, status: status, startTime: startTime, endTime: endTime, limit: limit, offset: offset, recvWindow: recvWindow, txId: txId) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/capital/deposit/subHisrec",
          query: [email: email, coin: coin, status: status, startTime: startTime, endTime: endTime, limit: limit, offset: offset, recvWindow: recvWindow, txId: txId, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Detail on Sub-account's Futures Account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/futures/account
  Requires signature: true
  """
  def get_detail_on_sub_account_s_futures_account_v1(client, email, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/account",
          query: [email: email, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Summary of Sub-account's Futures Account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/futures/accountSummary
  Requires signature: true
  """
  def get_summary_of_sub_account_s_futures_account_v1(client, page, limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/accountSummary",
          query: [page: page, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Sub-account Futures Asset Transfer History
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/futures/internalTransfer
  Requires signature: true
  """
  def query_sub_account_futures_asset_transfer_history_v1(client, email, futuresType, startTime: startTime, endTime: endTime, page: page, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/internalTransfer",
          query: [email: email, futuresType: futuresType, startTime: startTime, endTime: endTime, page: page, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Sub-account Futures Asset Transfer
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/futures/internalTransfer
  Requires signature: true
  """
  def sub_account_futures_asset_transfer_v1(client, fromEmail, toEmail, futuresType, asset, amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/internalTransfer",
          query: [fromEmail: fromEmail, toEmail: toEmail, futuresType: futuresType, asset: asset, amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Move Position History for Sub-account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/futures/move-position
  Requires signature: true
  """
  def get_move_position_history_for_sub_account_v1(client, symbol, page, row, startTime: startTime, endTime: endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/move-position",
          query: [symbol: symbol, startTime: startTime, endTime: endTime, page: page, row: row, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Move Position for Sub-account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/futures/move-position
  Requires signature: true
  """
  def move_position_for_sub_account_v1(client, fromUserEmail, toUserEmail, productType, orderArgs, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/move-position",
          query: [fromUserEmail: fromUserEmail, toUserEmail: toUserEmail, productType: productType, orderArgs: orderArgs, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Futures Transfer for Sub-account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/futures/transfer
  Requires signature: true
  """
  def futures_transfer_for_sub_account_v1(client, email, asset, amount, type, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/futures/transfer",
          query: [email: email, asset: asset, amount: amount, type: type, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Detail on Sub-account's Margin Account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/margin/account
  Requires signature: true
  """
  def get_detail_on_sub_account_s_margin_account_v1(client, email, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/margin/account",
          query: [email: email, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Summary of Sub-account's Margin Account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/margin/accountSummary
  Requires signature: true
  """
  def get_summary_of_sub_account_s_margin_account_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/margin/accountSummary",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Margin Transfer for Sub-account
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/margin/transfer
  Requires signature: true
  """
  def margin_transfer_for_sub_account_v1(client, email, asset, amount, type, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/margin/transfer",
          query: [email: email, asset: asset, amount: amount, type: type, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Sub-account Spot Assets Summary
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/spotSummary
  Requires signature: true
  """
  def query_sub_account_spot_assets_summary_v1(client, email: email, page: page, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/spotSummary",
          query: [email: email, page: page, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Sub-account Spot Asset Transfer History
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/sub/transfer/history
  Requires signature: true
  """
  def query_sub_account_spot_asset_transfer_history_v1(client, fromEmail: fromEmail, toEmail: toEmail, startTime: startTime, endTime: endTime, page: page, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/sub/transfer/history",
          query: [fromEmail: fromEmail, toEmail: toEmail, startTime: startTime, endTime: endTime, page: page, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Transfer to Master
  Variant: User Data
  Tags: for_sub_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/transfer/subToMaster
  Requires signature: true
  """
  def transfer_to_master_v1(client, asset, amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/transfer/subToMaster",
          query: [asset: asset, amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Transfer to Sub-account of Same Master
  Variant: User Data
  Tags: for_sub_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/transfer/subToSub
  Requires signature: true
  """
  def transfer_to_sub_account_of_same_master_v1(client, toEmail, asset, amount, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/transfer/subToSub",
          query: [toEmail: toEmail, asset: asset, amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Sub-account Transfer History
  Variant: User Data
  Tags: for_sub_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/transfer/subUserHistory
  Requires signature: true
  """
  def sub_account_transfer_history_v1(client, asset: asset, type: type, startTime: startTime, endTime: endTime, limit: limit, returnFailHistory: returnFailHistory, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/transfer/subUserHistory",
          query: [asset: asset, type: type, startTime: startTime, endTime: endTime, limit: limit, returnFailHistory: returnFailHistory, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Universal Transfer History
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/sub-account/universalTransfer
  Requires signature: true
  """
  def query_universal_transfer_history_v1(client, fromEmail: fromEmail, toEmail: toEmail, clientTranId: clientTranId, startTime: startTime, endTime: endTime, page: page, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/sub-account/universalTransfer",
          query: [fromEmail: fromEmail, toEmail: toEmail, clientTranId: clientTranId, startTime: startTime, endTime: endTime, page: page, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Universal Transfer
  Variant: User Data
  Tags: for_master_account, user_data
  Method: POST
  Path: /sapi/v1/sub-account/universalTransfer
  Requires signature: true
  """
  def universal_transfer_v1(client, fromAccountType, toAccountType, asset, amount, fromEmail: fromEmail, toEmail: toEmail, clientTranId: clientTranId, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/sub-account/universalTransfer",
          query: [fromEmail: fromEmail, toEmail: toEmail, fromAccountType: fromAccountType, toAccountType: toAccountType, clientTranId: clientTranId, symbol: symbol, asset: asset, amount: amount, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Detail on Sub-account's Futures Account V2
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v2/sub-account/futures/account
  Requires signature: true
  """
  def get_detail_on_sub_account_s_futures_account_v2(client, email, futuresType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/sub-account/futures/account",
          query: [email: email, futuresType: futuresType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Summary of Sub-account's Futures Account V2
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v2/sub-account/futures/accountSummary
  Requires signature: true
  """
  def get_summary_of_sub_account_s_futures_account_v2(client, futuresType, page: page, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/sub-account/futures/accountSummary",
          query: [futuresType: futuresType, page: page, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Sub-account Assets
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v3/sub-account/assets
  Requires signature: true
  """
  def query_sub_account_assets_v3(client, email, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v3/sub-account/assets",
          query: [email: email, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query Sub-account Assets
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v4/sub-account/assets
  Requires signature: true
  """
  def query_sub_account_assets_v4(client, email, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v4/sub-account/assets",
          query: [email: email, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end