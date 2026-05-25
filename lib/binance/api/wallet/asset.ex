defmodule Binance.API.Wallet.Asset do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec asset_detail_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Asset Detail
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/assetDetail
  Requires signature: true
  Optional: asset, recvWindow
  """
  def asset_detail_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/assetDetail",
          query: [asset: Keyword.get(opts, :asset), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec asset_dividend_record_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Asset Dividend Record
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/assetDividend
  Requires signature: true
  Optional: asset, startTime, endTime, limit, recvWindow
  """
  def asset_dividend_record_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/assetDividend",
          query: [asset: Keyword.get(opts, :asset), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), limit: Keyword.get(opts, :limit), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_user_delegation_history_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query User Delegation History
  Variant: User Data
  Tags: for_master_account, user_data
  Method: GET
  Path: /sapi/v1/asset/custody/transfer-history
  Requires signature: true
  Required: email, startTime, endTime
  Optional: type, asset, current, size, recvWindow
  """
  def query_user_delegation_history_v1(client, email, startTime, endTime, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/custody/transfer-history",
          query: [email: email, startTime: startTime, endTime: endTime, type: Keyword.get(opts, :type), asset: Keyword.get(opts, :asset), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec dustlog_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  DustLog
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/dribblet
  Requires signature: true
  Optional: accountType, startTime, endTime, recvWindow
  """
  def dustlog_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/dribblet",
          query: [accountType: Keyword.get(opts, :accountType), startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec dust_transfer_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Dust Transfer
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/asset/dust
  Requires signature: true
  Required: asset
  Optional: accountType, recvWindow
  """
  def dust_transfer_v1(client, asset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/asset/dust",
          query: [asset: asset, accountType: Keyword.get(opts, :accountType), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_assets_that_can_be_converted_into_bnb_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Assets That Can Be Converted Into BNB
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/asset/dust-btc
  Requires signature: true
  Optional: accountType, recvWindow
  """
  def get_assets_that_can_be_converted_into_bnb_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/asset/dust-btc",
          query: [accountType: Keyword.get(opts, :accountType), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec dust_convert_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Dust Convert
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/asset/dust-convert/convert
  Requires signature: true
  Required: asset
  Optional: accountType, clientId, targetAsset, thirdPartyClientId, dustQuotaAssetToTargetAssetPrice
  """
  def dust_convert_v1(client, asset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/asset/dust-convert/convert",
          query: [asset: asset, accountType: Keyword.get(opts, :accountType), clientId: Keyword.get(opts, :clientId), targetAsset: Keyword.get(opts, :targetAsset), thirdPartyClientId: Keyword.get(opts, :thirdPartyClientId), dustQuotaAssetToTargetAssetPrice: Keyword.get(opts, :dustQuotaAssetToTargetAssetPrice), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec dust_convertible_assets_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Dust Convertible Assets
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/asset/dust-convert/query-convertible-assets
  Requires signature: true
  Required: targetAsset
  Optional: accountType, dustQuotaAssetToTargetAssetPrice
  """
  def dust_convertible_assets_v1(client, targetAsset, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/asset/dust-convert/query-convertible-assets",
          query: [accountType: Keyword.get(opts, :accountType), targetAsset: targetAsset, dustQuotaAssetToTargetAssetPrice: Keyword.get(opts, :dustQuotaAssetToTargetAssetPrice), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec funding_wallet_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Funding Wallet
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/asset/get-funding-asset
  Requires signature: true
  Optional: asset, needBtcValuation, recvWindow
  """
  def funding_wallet_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/asset/get-funding-asset",
          query: [asset: Keyword.get(opts, :asset), needBtcValuation: Keyword.get(opts, :needBtcValuation), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_cloud_mining_payment_and_refund_history_v1(Binance.Client.t(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Get Cloud-Mining payment and refund history
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/ledger-transfer/cloud-mining/queryByPage
  Requires signature: true
  Required: startTime, endTime
  Optional: tranId, clientTranId, asset, current, size
  """
  def get_cloud_mining_payment_and_refund_history_v1(client, startTime, endTime, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/ledger-transfer/cloud-mining/queryByPage",
          query: [tranId: Keyword.get(opts, :tranId), clientTranId: Keyword.get(opts, :clientTranId), asset: Keyword.get(opts, :asset), startTime: startTime, endTime: endTime, current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec trade_fee_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Trade Fee
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/tradeFee
  Requires signature: true
  Optional: symbol, recvWindow
  """
  def trade_fee_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/tradeFee",
          query: [symbol: Keyword.get(opts, :symbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_user_universal_transfer_history_v1(Binance.Client.t(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query User Universal Transfer History
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/transfer
  Requires signature: true
  Required: type
  Optional: startTime, endTime, current, size, fromSymbol, toSymbol, recvWindow
  """
  def query_user_universal_transfer_history_v1(client, type, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/transfer",
          query: [type: type, startTime: Keyword.get(opts, :startTime), endTime: Keyword.get(opts, :endTime), current: Keyword.get(opts, :current), size: Keyword.get(opts, :size), fromSymbol: Keyword.get(opts, :fromSymbol), toSymbol: Keyword.get(opts, :toSymbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec user_universal_transfer_v1(Binance.Client.t(), term(), term(), term(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  User Universal Transfer
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/asset/transfer
  Requires signature: true
  Required: type, asset, amount
  Optional: fromSymbol, toSymbol, recvWindow
  """
  def user_universal_transfer_v1(client, type, asset, amount, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/asset/transfer",
          query: [type: type, asset: asset, amount: amount, fromSymbol: Keyword.get(opts, :fromSymbol), toSymbol: Keyword.get(opts, :toSymbol), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec query_user_wallet_balance_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Query User Wallet Balance
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/asset/wallet/balance
  Requires signature: true
  Optional: quoteAsset, recvWindow
  """
  def query_user_wallet_balance_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/asset/wallet/balance",
          query: [quoteAsset: Keyword.get(opts, :quoteAsset), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec toggle_bnb_burn_on_spot_trade_and_margin_interest_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Toggle BNB Burn On Spot Trade And Margin Interest
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v1/bnbBurn
  Requires signature: true
  Optional: spotBNBBurn, interestBNBBurn, recvWindow
  """
  def toggle_bnb_burn_on_spot_trade_and_margin_interest_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/bnbBurn",
          query: [spotBNBBurn: Keyword.get(opts, :spotBNBBurn), interestBNBBurn: Keyword.get(opts, :interestBNBBurn), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @spec get_open_symbol_list_v1(Binance.Client.t()) :: {:ok, term()} | {:error, term()}
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
  
  @spec user_asset_v3(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  User Asset
  Variant: User Data
  Tags: user_data
  Method: POST
  Path: /sapi/v3/asset/getUserAsset
  Requires signature: true
  Optional: asset, needBtcValuation, recvWindow
  """
  def user_asset_v3(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v3/asset/getUserAsset",
          query: [asset: Keyword.get(opts, :asset), needBtcValuation: Keyword.get(opts, :needBtcValuation), recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end