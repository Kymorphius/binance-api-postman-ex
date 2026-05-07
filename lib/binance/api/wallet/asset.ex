defmodule Binance.API.Wallet.Asset do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Asset Detail
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/assetDetail
  Requires signature: true
  """
  def asset_detail_v1(client, asset: asset, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/assetDetail",
          query: [asset: asset, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Asset Dividend Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/assetDividend
  Requires signature: true
  """
  def asset_dividend_record_v1(client, asset: asset, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/assetDividend",
          query: [asset: asset, startTime: startTime, endTime: endTime, limit: limit, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query User Delegation History
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/asset/custody/transfer-history
  Requires signature: true
  """
  def query_user_delegation_history_v1(client, email, startTime, endTime, type: type, asset: asset, current: current, size: size, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/custody/transfer-history",
          query: [email: email, startTime: startTime, endTime: endTime, type: type, asset: asset, current: current, size: size, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  DustLog
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/dribblet
  Requires signature: true
  """
  def dustlog_v1(client, accountType: accountType, startTime: startTime, endTime: endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/dribblet",
          query: [accountType: accountType, startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Dust Transfer
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/asset/dust
  Requires signature: true
  """
  def dust_transfer_v1(client, asset, accountType: accountType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/asset/dust",
          query: [asset: asset, accountType: accountType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Assets That Can Be Converted Into BNB
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/asset/dust-btc
  Requires signature: true
  """
  def get_assets_that_can_be_converted_into_bnb_v1(client, accountType: accountType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/asset/dust-btc",
          query: [accountType: accountType, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Dust Convert
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/asset/dust-convert/convert
  Requires signature: true
  """
  def dust_convert_v1(client, asset, clientId: clientId, targetAsset: targetAsset, thirdPartyClientId: thirdPartyClientId, dustQuotaAssetToTargetAssetPrice: dustQuotaAssetToTargetAssetPrice) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/asset/dust-convert/convert",
          query: [asset: asset, clientId: clientId, targetAsset: targetAsset, thirdPartyClientId: thirdPartyClientId, dustQuotaAssetToTargetAssetPrice: dustQuotaAssetToTargetAssetPrice, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Dust Convertible Assets
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/asset/dust-convert/query-convertible-assets
  Requires signature: true
  """
  def dust_convertible_assets_v1(client, targetAsset, dustQuotaAssetToTargetAssetPrice: dustQuotaAssetToTargetAssetPrice) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/asset/dust-convert/query-convertible-assets",
          query: [targetAsset: targetAsset, dustQuotaAssetToTargetAssetPrice: dustQuotaAssetToTargetAssetPrice, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Funding Wallet
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/asset/get-funding-asset
  Requires signature: true
  """
  def funding_wallet_v1(client, asset: asset, needBtcValuation: needBtcValuation, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/asset/get-funding-asset",
          query: [asset: asset, needBtcValuation: needBtcValuation, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Cloud-Mining payment and refund history
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/ledger-transfer/cloud-mining/queryByPage
  Requires signature: true
  """
  def get_cloud_mining_payment_and_refund_history_v1(client, startTime, endTime, tranId: tranId, clientTranId: clientTranId, asset: asset, current: current, size: size) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/ledger-transfer/cloud-mining/queryByPage",
          query: [tranId: tranId, clientTranId: clientTranId, asset: asset, startTime: startTime, endTime: endTime, current: current, size: size, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Trade Fee
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/tradeFee
  Requires signature: true
  """
  def trade_fee_v1(client, symbol: symbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/tradeFee",
          query: [symbol: symbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query User Universal Transfer History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/transfer
  Requires signature: true
  """
  def query_user_universal_transfer_history_v1(client, type, startTime: startTime, endTime: endTime, current: current, size: size, fromSymbol: fromSymbol, toSymbol: toSymbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/transfer",
          query: [type: type, startTime: startTime, endTime: endTime, current: current, size: size, fromSymbol: fromSymbol, toSymbol: toSymbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  User Universal Transfer
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/asset/transfer
  Requires signature: true
  """
  def user_universal_transfer_v1(client, type, asset, amount, fromSymbol: fromSymbol, toSymbol: toSymbol, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/asset/transfer",
          query: [type: type, asset: asset, amount: amount, fromSymbol: fromSymbol, toSymbol: toSymbol, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Query User Wallet Balance
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/wallet/balance
  Requires signature: true
  """
  def query_user_wallet_balance_v1(client, quoteAsset: quoteAsset, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/wallet/balance",
          query: [quoteAsset: quoteAsset, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Toggle BNB Burn On Spot Trade And Margin Interest
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/bnbBurn
  Requires signature: true
  """
  def toggle_bnb_burn_on_spot_trade_and_margin_interest_v1(client, spotBNBBurn: spotBNBBurn, interestBNBBurn: interestBNBBurn, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/bnbBurn",
          query: [spotBNBBurn: spotBNBBurn, interestBNBBurn: interestBNBBurn, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Get Open Symbol List
  Variant: Market Data
  Tags: market_data
  Method: GET
  Path: /sapi/v1/spot/open-symbol-list
  Requires signature: false
  """
  def get_open_symbol_list_v1(client) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: false,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/spot/open-symbol-list",
          query: [],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  User Asset
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v3/asset/getUserAsset
  Requires signature: true
  """
  def user_asset_v3(client, asset: asset, needBtcValuation: needBtcValuation, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v3/asset/getUserAsset",
          query: [asset: asset, needBtcValuation: needBtcValuation, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end