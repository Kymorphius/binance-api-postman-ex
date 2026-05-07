defmodule Binance.API.Wallet.TravelRule do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @doc """
  Fetch address verification list
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/addressVerify/list
  Requires signature: true
  """
  def fetch_address_verification_list_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/addressVerify/list",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Submit Deposit Questionnaire
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: PUT
  Path: /sapi/v1/localentity/broker/deposit/provide-info
  Requires signature: true
  """
  def submit_deposit_questionnaire_for_local_entities_that_require_travel_rule_supporting_network_v1(client, subAccountId, depositId, questionnaire, beneficiaryPii, network: network, coin: coin, amount: amount, address: address, addressTag: addressTag) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/sapi/v1/localentity/broker/deposit/provide-info",
          query: [subAccountId: subAccountId, depositId: depositId, questionnaire: questionnaire, beneficiaryPii: beneficiaryPii, network: network, coin: coin, amount: amount, address: address, addressTag: addressTag, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Broker Withdraw
  Variant: User Data
  Tags: for_brokers_of_local_entities_that_require_travel_rule, user_data
  Method: POST
  Path: /sapi/v1/localentity/broker/withdraw/apply
  Requires signature: true
  """
  def broker_withdraw_v1(client, address, coin, amount, withdrawOrderId, questionnaire, originatorPii, addressTag: addressTag, network: network, addressName: addressName, transactionFeeFlag: transactionFeeFlag, walletType: walletType) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/localentity/broker/withdraw/apply",
          query: [address: address, addressTag: addressTag, network: network, coin: coin, addressName: addressName, amount: amount, withdrawOrderId: withdrawOrderId, transactionFeeFlag: transactionFeeFlag, walletType: walletType, questionnaire: questionnaire, originatorPii: originatorPii, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Deposit History
  Variant: User Data
  Tags: for_local_entities_that_required_travel_rule, supporting_network, user_data
  Method: GET
  Path: /sapi/v1/localentity/deposit/history
  Requires signature: true
  """
  def deposit_history_v1(client, trId: trId, txId: txId, tranId: tranId, network: network, coin: coin, travelRuleStatus: travelRuleStatus, pendingQuestionnaire: pendingQuestionnaire, startTime: startTime, endTime: endTime, offset: offset, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/localentity/deposit/history",
          query: [trId: trId, txId: txId, tranId: tranId, network: network, coin: coin, travelRuleStatus: travelRuleStatus, pendingQuestionnaire: pendingQuestionnaire, startTime: startTime, endTime: endTime, offset: offset, limit: limit, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Submit Deposit Questionnaire
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: PUT
  Path: /sapi/v1/localentity/deposit/provide-info
  Requires signature: true
  """
  def submit_deposit_questionnaire_for_local_entities_that_require_travel_rule_supporting_network_v1(client, tranId, questionnaire) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/sapi/v1/localentity/deposit/provide-info",
          query: [tranId: tranId, questionnaire: questionnaire, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Check Questionnaire Requirements
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: GET
  Path: /sapi/v1/localentity/questionnaire-requirements
  Requires signature: true
  """
  def check_questionnaire_requirements_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/localentity/questionnaire-requirements",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  VASP list
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: GET
  Path: /sapi/v1/localentity/vasp
  Requires signature: true
  """
  def vasp_list_v1(client, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/localentity/vasp",
          query: [recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Withdraw
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, user_data
  Method: POST
  Path: /sapi/v1/localentity/withdraw/apply
  Requires signature: true
  """
  def withdraw_v1(client, coin, address, amount, questionnaire, withdrawOrderId: withdrawOrderId, network: network, addressTag: addressTag, transactionFeeFlag: transactionFeeFlag, name: name, walletType: walletType, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/localentity/withdraw/apply",
          query: [coin: coin, withdrawOrderId: withdrawOrderId, network: network, address: address, addressTag: addressTag, amount: amount, transactionFeeFlag: transactionFeeFlag, name: name, walletType: walletType, recvWindow: recvWindow, questionnaire: questionnaire, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Withdraw History
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: GET
  Path: /sapi/v1/localentity/withdraw/history
  Requires signature: true
  """
  def withdraw_history_v1(client, trId: trId, txId: txId, withdrawOrderId: withdrawOrderId, network: network, coin: coin, travelRuleStatus: travelRuleStatus, offset: offset, limit: limit, startTime: startTime, endTime: endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/localentity/withdraw/history",
          query: [trId: trId, txId: txId, withdrawOrderId: withdrawOrderId, network: network, coin: coin, travelRuleStatus: travelRuleStatus, offset: offset, limit: limit, startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Deposit History V2
  Variant: User Data
  Tags: for_local_entities_that_required_travel_rule, supporting_network, user_data
  Method: GET
  Path: /sapi/v2/localentity/deposit/history
  Requires signature: true
  """
  def deposit_history_v2(client, depositId: depositId, txId: txId, network: network, coin: coin, retrieveQuestionnaire: retrieveQuestionnaire, startTime: startTime, endTime: endTime, offset: offset, limit: limit) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/localentity/deposit/history",
          query: [depositId: depositId, txId: txId, network: network, coin: coin, retrieveQuestionnaire: retrieveQuestionnaire, startTime: startTime, endTime: endTime, offset: offset, limit: limit, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Submit Deposit Questionnaire V2
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: PUT
  Path: /sapi/v2/localentity/deposit/provide-info
  Requires signature: true
  """
  def submit_deposit_questionnaire_v2(client, depositId, questionnaire) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/sapi/v2/localentity/deposit/provide-info",
          query: [depositId: depositId, questionnaire: questionnaire, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
  
  @doc """
  Withdraw History V2
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: GET
  Path: /sapi/v2/localentity/withdraw/history
  Requires signature: true
  """
  def withdraw_history_v2(client, trId: trId, txId: txId, withdrawOrderId: withdrawOrderId, network: network, coin: coin, travelRuleStatus: travelRuleStatus, offset: offset, limit: limit, startTime: startTime, endTime: endTime, recvWindow: recvWindow) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/localentity/withdraw/history",
          query: [trId: trId, txId: txId, withdrawOrderId: withdrawOrderId, network: network, coin: coin, travelRuleStatus: travelRuleStatus, offset: offset, limit: limit, startTime: startTime, endTime: endTime, recvWindow: recvWindow, timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })
    
      Binance.REST.HTTPClient.request(request)
    end
  end
end