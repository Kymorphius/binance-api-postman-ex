defmodule Binance.API.Wallet.TravelRule do
  @moduledoc false

  @base_urls %{prod_url: "https://api.binance.com"}

  def base_url(key \\ :prod_url) do
    case Map.fetch(@base_urls, key) do
      {:ok, url} -> {:ok, url}
      :error -> {:error, {:unsupported_env, key}}
    end
  end

  @spec fetch_address_verification_list_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Fetch address verification list
  Variant: User Data
  Tags: user_data
  Method: GET
  Path: /sapi/v1/addressVerify/list
  Requires signature: true
  Optional: recvWindow
  """
  def fetch_address_verification_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/addressVerify/list",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec submit_deposit_questionnaire_for_local_entities_that_require_travel_rule_supporting_network_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Submit Deposit Questionnaire
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: PUT
  Path: /sapi/v1/localentity/broker/deposit/provide-info
  Requires signature: true
  Required: subAccountId, depositId, questionnaire, beneficiaryPii
  Optional: network, coin, amount, address, addressTag
  """
  def submit_deposit_questionnaire_for_local_entities_that_require_travel_rule_supporting_network_v1(
        client,
        subAccountId,
        depositId,
        questionnaire,
        beneficiaryPii,
        opts \\ []
      ) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "PUT",
          base_url: base_url,
          url: "/sapi/v1/localentity/broker/deposit/provide-info",
          query: [
            subAccountId: subAccountId,
            depositId: depositId,
            questionnaire: questionnaire,
            beneficiaryPii: beneficiaryPii,
            network: Keyword.get(opts, :network),
            coin: Keyword.get(opts, :coin),
            amount: Keyword.get(opts, :amount),
            address: Keyword.get(opts, :address),
            addressTag: Keyword.get(opts, :addressTag),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec broker_withdraw_v1(
          Binance.Client.t(),
          term(),
          term(),
          term(),
          term(),
          term(),
          term(),
          Keyword.t()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Broker Withdraw
  Variant: User Data
  Tags: for_brokers_of_local_entities_that_require_travel_rule, user_data
  Method: POST
  Path: /sapi/v1/localentity/broker/withdraw/apply
  Requires signature: true
  Required: address, coin, amount, withdrawOrderId, questionnaire, originatorPii
  Optional: addressTag, network, addressName, transactionFeeFlag, walletType
  """
  def broker_withdraw_v1(
        client,
        address,
        coin,
        amount,
        withdrawOrderId,
        questionnaire,
        originatorPii,
        opts \\ []
      ) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/localentity/broker/withdraw/apply",
          query: [
            address: address,
            addressTag: Keyword.get(opts, :addressTag),
            network: Keyword.get(opts, :network),
            coin: coin,
            addressName: Keyword.get(opts, :addressName),
            amount: amount,
            withdrawOrderId: withdrawOrderId,
            transactionFeeFlag: Keyword.get(opts, :transactionFeeFlag),
            walletType: Keyword.get(opts, :walletType),
            questionnaire: questionnaire,
            originatorPii: originatorPii,
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec deposit_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Deposit History
  Variant: User Data
  Tags: for_local_entities_that_required_travel_rule, supporting_network, user_data
  Method: GET
  Path: /sapi/v1/localentity/deposit/history
  Requires signature: true
  Optional: trId, txId, tranId, network, coin, travelRuleStatus, pendingQuestionnaire, startTime, endTime, offset, limit
  """
  def deposit_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/localentity/deposit/history",
          query: [
            trId: Keyword.get(opts, :trId),
            txId: Keyword.get(opts, :txId),
            tranId: Keyword.get(opts, :tranId),
            network: Keyword.get(opts, :network),
            coin: Keyword.get(opts, :coin),
            travelRuleStatus: Keyword.get(opts, :travelRuleStatus),
            pendingQuestionnaire: Keyword.get(opts, :pendingQuestionnaire),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            offset: Keyword.get(opts, :offset),
            limit: Keyword.get(opts, :limit),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec submit_deposit_questionnaire_for_local_entities_that_require_travel_rule_supporting_network_v1(
          Binance.Client.t(),
          term(),
          term()
        ) :: {:ok, term()} | {:error, term()}
  @doc """
  Submit Deposit Questionnaire
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: PUT
  Path: /sapi/v1/localentity/deposit/provide-info
  Requires signature: true
  Required: tranId, questionnaire
  """
  def submit_deposit_questionnaire_for_local_entities_that_require_travel_rule_supporting_network_v1(
        client,
        tranId,
        questionnaire
      ) do
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

  @spec check_questionnaire_requirements_v1(Binance.Client.t(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Check Questionnaire Requirements
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: GET
  Path: /sapi/v1/localentity/questionnaire-requirements
  Requires signature: true
  Optional: recvWindow
  """
  def check_questionnaire_requirements_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/localentity/questionnaire-requirements",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec vasp_list_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  VASP list
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: GET
  Path: /sapi/v1/localentity/vasp
  Requires signature: true
  Optional: recvWindow
  """
  def vasp_list_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/localentity/vasp",
          query: [recvWindow: Keyword.get(opts, :recvWindow), timestamp: nil],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec withdraw_v1(Binance.Client.t(), term(), term(), term(), term(), Keyword.t()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Withdraw
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, user_data
  Method: POST
  Path: /sapi/v1/localentity/withdraw/apply
  Requires signature: true
  Required: coin, address, amount, questionnaire
  Optional: withdrawOrderId, network, addressTag, transactionFeeFlag, name, walletType, recvWindow
  """
  def withdraw_v1(client, coin, address, amount, questionnaire, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "POST",
          base_url: base_url,
          url: "/sapi/v1/localentity/withdraw/apply",
          query: [
            coin: coin,
            withdrawOrderId: Keyword.get(opts, :withdrawOrderId),
            network: Keyword.get(opts, :network),
            address: address,
            addressTag: Keyword.get(opts, :addressTag),
            amount: amount,
            transactionFeeFlag: Keyword.get(opts, :transactionFeeFlag),
            name: Keyword.get(opts, :name),
            walletType: Keyword.get(opts, :walletType),
            recvWindow: Keyword.get(opts, :recvWindow),
            questionnaire: questionnaire,
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec withdraw_history_v1(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Withdraw History
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: GET
  Path: /sapi/v1/localentity/withdraw/history
  Requires signature: true
  Optional: trId, txId, withdrawOrderId, network, coin, travelRuleStatus, offset, limit, startTime, endTime, recvWindow
  """
  def withdraw_history_v1(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v1/localentity/withdraw/history",
          query: [
            trId: Keyword.get(opts, :trId),
            txId: Keyword.get(opts, :txId),
            withdrawOrderId: Keyword.get(opts, :withdrawOrderId),
            network: Keyword.get(opts, :network),
            coin: Keyword.get(opts, :coin),
            travelRuleStatus: Keyword.get(opts, :travelRuleStatus),
            offset: Keyword.get(opts, :offset),
            limit: Keyword.get(opts, :limit),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            recvWindow: Keyword.get(opts, :recvWindow),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec deposit_history_v2(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Deposit History V2
  Variant: User Data
  Tags: for_local_entities_that_required_travel_rule, supporting_network, user_data
  Method: GET
  Path: /sapi/v2/localentity/deposit/history
  Requires signature: true
  Optional: depositId, txId, network, coin, retrieveQuestionnaire, startTime, endTime, offset, limit
  """
  def deposit_history_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/localentity/deposit/history",
          query: [
            depositId: Keyword.get(opts, :depositId),
            txId: Keyword.get(opts, :txId),
            network: Keyword.get(opts, :network),
            coin: Keyword.get(opts, :coin),
            retrieveQuestionnaire: Keyword.get(opts, :retrieveQuestionnaire),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
            offset: Keyword.get(opts, :offset),
            limit: Keyword.get(opts, :limit),
            timestamp: nil
          ],
          headers: [{"X-MBX-APIKEY", ""}, {"Accept", "application/json"}],
          body: %{mode: "urlencoded", urlencoded: []}
        })

      Binance.REST.HTTPClient.request(request)
    end
  end

  @spec submit_deposit_questionnaire_v2(Binance.Client.t(), term(), term()) ::
          {:ok, term()} | {:error, term()}
  @doc """
  Submit Deposit Questionnaire V2
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: PUT
  Path: /sapi/v2/localentity/deposit/provide-info
  Requires signature: true
  Required: depositId, questionnaire
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

  @spec withdraw_history_v2(Binance.Client.t(), Keyword.t()) :: {:ok, term()} | {:error, term()}
  @doc """
  Withdraw History V2
  Variant: User Data
  Tags: for_local_entities_that_require_travel_rule, supporting_network, user_data
  Method: GET
  Path: /sapi/v2/localentity/withdraw/history
  Requires signature: true
  Optional: trId, txId, withdrawOrderId, network, coin, travelRuleStatus, offset, limit, startTime, endTime, recvWindow
  """
  def withdraw_history_v2(client, opts \\ []) do
    with {:ok, base_url} <- base_url(client.env) do
      {:ok, request} =
        Binance.RequestBuilder.build(%{
          client: client,
          requires_signature?: true,
          method: "GET",
          base_url: base_url,
          url: "/sapi/v2/localentity/withdraw/history",
          query: [
            trId: Keyword.get(opts, :trId),
            txId: Keyword.get(opts, :txId),
            withdrawOrderId: Keyword.get(opts, :withdrawOrderId),
            network: Keyword.get(opts, :network),
            coin: Keyword.get(opts, :coin),
            travelRuleStatus: Keyword.get(opts, :travelRuleStatus),
            offset: Keyword.get(opts, :offset),
            limit: Keyword.get(opts, :limit),
            startTime: Keyword.get(opts, :startTime),
            endTime: Keyword.get(opts, :endTime),
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
