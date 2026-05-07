defmodule Binance.REST.HTTPClient do
  @moduledoc false

  require Logger

  alias Binance.REST.Request

  def request(%Request{} = request) do
    request
    |> validate_request()
    |> maybe_send()
  end

  defp validate_request(%Request{method: nil}), do: {:error, :missing_method}
  defp validate_request(%Request{url: nil}), do: {:error, :missing_url}
  defp validate_request(request), do: {:ok, request}

  defp maybe_send({:ok, request}), do: dispatch(request)
  defp maybe_send({:error, _} = error), do: error

  defp dispatch(%Request{url: url, method: method, headers: headers, body: body}) do
    method = String.downcase(to_string(method))
    headers = normalize_headers(headers)

    form = form_body(body)
    json = json_body(body)
    raw = raw_body(body)

    Logger.debug(fn -> "http_url: #{inspect(url)}" end)
    Logger.debug(fn -> "http_headers: #{inspect(headers)}" end)
    Logger.debug(fn -> "http_body: #{inspect(body)}" end)
    Logger.debug(fn -> "http_form: #{inspect(form)}" end)
    Logger.debug(fn -> "http_json: #{inspect(json)}" end)
    Logger.debug(fn -> "http_raw_body: #{inspect(raw)}" end)

    case method do
      "get" -> Req.get(url, headers: headers, form: form, json: json, body: raw)
      "post" -> Req.post(url, headers: headers, form: form, json: json, body: raw)
      "put" -> Req.put(url, headers: headers, form: form, json: json, body: raw)
      "delete" -> Req.delete(url, headers: headers, form: form, json: json, body: raw)
      _ -> {:error, :unsupported_method}
    end
    |> normalize_response()
  end

  defp form_body(body) when is_list(body) do
    case Keyword.get(body, :mode) do
      "urlencoded" ->
        case Keyword.get(body, :urlencoded) do
          [] -> nil
          nil -> nil
          urlencoded -> urlencoded
        end

      _ -> nil
    end
  end

  defp form_body(_), do: nil

  defp json_body(body) when is_list(body) do
    case Keyword.get(body, :mode) do
      "raw" ->
        case Keyword.get(body, :raw) do
          value -> if empty_value?(value), do: nil, else: value
        end

      _ -> nil
    end
  end

  defp json_body(_), do: nil

  defp raw_body(body) when is_list(body) do
    case Keyword.get(body, :mode) do
      "raw" ->
        case Keyword.get(body, :raw) do
          value -> if empty_value?(value), do: nil, else: value
        end

      _ -> nil
    end
  end

  defp raw_body(_), do: nil

  defp empty_value?(value), do: value in [nil, [], %{}, ""]

  defp normalize_headers(headers) when is_list(headers), do: headers
  defp normalize_headers(headers), do: List.wrap(headers)

  defp normalize_response({:ok, %Req.Response{status: status, body: body}}) when status in 200..299 do
    case body do
      %{"code" => code, "msg" => msg} when is_integer(code) -> {:error, {code, msg}}
      %{"code" => code, "msg" => msg} -> {:error, {code, msg}}
      _ -> {:ok, body}
    end
  end

  defp normalize_response({:ok, %Req.Response{status: status, body: body}}), do: {:error, {status, body}}
  defp normalize_response({:error, reason}), do: {:error, reason}
end
      