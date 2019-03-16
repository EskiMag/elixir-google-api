# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Logging.V2.Api.Sinks do
  @moduledoc """
  API calls for all endpoints tagged `Sinks`.
  """

  alias GoogleApi.Logging.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a sink that exports specified log entries to a destination. The export of newly-ingested log entries begins immediately, unless the sink&#39;s writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.

  ## Parameters

  - connection (GoogleApi.Logging.V2.Connection): Connection to server
  - v2_id (String.t): Part of &#x60;parent&#x60;. Required. The resource in which to create the sink: \&quot;projects/[PROJECT_ID]\&quot; \&quot;organizations/[ORGANIZATION_ID]\&quot; \&quot;billingAccounts/[BILLING_ACCOUNT_ID]\&quot; \&quot;folders/[FOLDER_ID]\&quot; Examples: \&quot;projects/my-logging-project\&quot;, \&quot;organizations/123456789\&quot;.
  - v2_id1 (String.t): Part of &#x60;parent&#x60;. See documentation of &#x60;v2Id&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :uniqueWriterIdentity (boolean()): Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted or set to false, and if the sink&#39;s parent is a project, then the value returned as writer_identity is the same group or service account used by Logging before the addition of writer identities to this API. The sink&#39;s destination must be in the same project as the sink itself.If this field is set to true, or if the sink is owned by a non-project resource such as an organization, then the value of writer_identity will be a unique service account used only for exports from the new sink. For more information, see writer_identity in LogSink.
    - :body (LogSink): 

  ## Returns

  {:ok, %GoogleApi.Logging.V2.Model.LogSink{}} on success
  {:error, info} on failure
  """
  @spec logging_sinks_create(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Logging.V2.Model.LogSink.t()} | {:error, Tesla.Env.t()}
  def logging_sinks_create(connection, v2_id, v2_id1, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :uniqueWriterIdentity => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/{v2Id}/{v2Id1}/sinks", %{
        "v2Id" => URI.encode(v2_id, &URI.char_unreserved?/1),
        "v2Id1" => URI.encode(v2_id1, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.LogSink{}])
  end

  @doc """
  Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.

  ## Parameters

  - connection (GoogleApi.Logging.V2.Connection): Connection to server
  - v2_id (String.t): Part of &#x60;sinkName&#x60;. Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: \&quot;projects/[PROJECT_ID]/sinks/[SINK_ID]\&quot; \&quot;organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\&quot; \&quot;billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\&quot; \&quot;folders/[FOLDER_ID]/sinks/[SINK_ID]\&quot; Example: \&quot;projects/my-project-id/sinks/my-sink-id\&quot;.
  - v2_id1 (String.t): Part of &#x60;sinkName&#x60;. See documentation of &#x60;v2Id&#x60;.
  - sinks_id (String.t): Part of &#x60;sinkName&#x60;. See documentation of &#x60;v2Id&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Logging.V2.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec logging_sinks_delete(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Logging.V2.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def logging_sinks_delete(connection, v2_id, v2_id1, sinks_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v2/{v2Id}/{v2Id1}/sinks/{sinksId}", %{
        "v2Id" => URI.encode(v2_id, &URI.char_unreserved?/1),
        "v2Id1" => URI.encode(v2_id1, &URI.char_unreserved?/1),
        "sinksId" => URI.encode(sinks_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.Empty{}])
  end

  @doc """
  Gets a sink.

  ## Parameters

  - connection (GoogleApi.Logging.V2.Connection): Connection to server
  - v2_id (String.t): Part of &#x60;sinkName&#x60;. Required. The resource name of the sink: \&quot;projects/[PROJECT_ID]/sinks/[SINK_ID]\&quot; \&quot;organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\&quot; \&quot;billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\&quot; \&quot;folders/[FOLDER_ID]/sinks/[SINK_ID]\&quot; Example: \&quot;projects/my-project-id/sinks/my-sink-id\&quot;.
  - v2_id1 (String.t): Part of &#x60;sinkName&#x60;. See documentation of &#x60;v2Id&#x60;.
  - sinks_id (String.t): Part of &#x60;sinkName&#x60;. See documentation of &#x60;v2Id&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Logging.V2.Model.LogSink{}} on success
  {:error, info} on failure
  """
  @spec logging_sinks_get(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Logging.V2.Model.LogSink.t()} | {:error, Tesla.Env.t()}
  def logging_sinks_get(connection, v2_id, v2_id1, sinks_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/{v2Id}/{v2Id1}/sinks/{sinksId}", %{
        "v2Id" => URI.encode(v2_id, &URI.char_unreserved?/1),
        "v2Id1" => URI.encode(v2_id1, &URI.char_unreserved?/1),
        "sinksId" => URI.encode(sinks_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.LogSink{}])
  end

  @doc """
  Lists sinks.

  ## Parameters

  - connection (GoogleApi.Logging.V2.Connection): Connection to server
  - v2_id (String.t): Part of &#x60;parent&#x60;. Required. The parent resource whose sinks are to be listed: \&quot;projects/[PROJECT_ID]\&quot; \&quot;organizations/[ORGANIZATION_ID]\&quot; \&quot;billingAccounts/[BILLING_ACCOUNT_ID]\&quot; \&quot;folders/[FOLDER_ID]\&quot; 
  - v2_id1 (String.t): Part of &#x60;parent&#x60;. See documentation of &#x60;v2Id&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.
    - :pageToken (String.t): Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.

  ## Returns

  {:ok, %GoogleApi.Logging.V2.Model.ListSinksResponse{}} on success
  {:error, info} on failure
  """
  @spec logging_sinks_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Logging.V2.Model.ListSinksResponse.t()} | {:error, Tesla.Env.t()}
  def logging_sinks_list(connection, v2_id, v2_id1, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/{v2Id}/{v2Id1}/sinks", %{
        "v2Id" => URI.encode(v2_id, &URI.char_unreserved?/1),
        "v2Id1" => URI.encode(v2_id1, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.ListSinksResponse{}])
  end

  @doc """
  Updates a sink. This method replaces the following fields in the existing sink with values from the new sink: destination, and filter.The updated sink might also have a new writer_identity; see the unique_writer_identity field.

  ## Parameters

  - connection (GoogleApi.Logging.V2.Connection): Connection to server
  - v2_id (String.t): Part of &#x60;sinkName&#x60;. Required. The full resource name of the sink to update, including the parent resource and the sink identifier: \&quot;projects/[PROJECT_ID]/sinks/[SINK_ID]\&quot; \&quot;organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]\&quot; \&quot;billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]\&quot; \&quot;folders/[FOLDER_ID]/sinks/[SINK_ID]\&quot; Example: \&quot;projects/my-project-id/sinks/my-sink-id\&quot;.
  - v2_id1 (String.t): Part of &#x60;sinkName&#x60;. See documentation of &#x60;v2Id&#x60;.
  - sinks_id (String.t): Part of &#x60;sinkName&#x60;. See documentation of &#x60;v2Id&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :uniqueWriterIdentity (boolean()): Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the value of writer_identity in the updated sink depends on both the old and new values of this field: If the old and new values of this field are both false or both true, then there is no change to the sink&#39;s writer_identity. If the old value is false and the new value is true, then writer_identity is changed to a unique service account. It is an error if the old value is true and the new value is set to false or defaulted to false.
    - :updateMask (String.t): Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.An empty updateMask is temporarily treated as using the following mask for backwards compatibility purposes:  destination,filter,includeChildren At some point in the future, behavior will be removed and specifying an empty updateMask will be an error.For a detailed FieldMask definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMaskExample: updateMask&#x3D;filter.
    - :body (LogSink): 

  ## Returns

  {:ok, %GoogleApi.Logging.V2.Model.LogSink{}} on success
  {:error, info} on failure
  """
  @spec logging_sinks_update(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Logging.V2.Model.LogSink.t()} | {:error, Tesla.Env.t()}
  def logging_sinks_update(connection, v2_id, v2_id1, sinks_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :upload_protocol => :query,
      :uploadType => :query,
      :uniqueWriterIdentity => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v2/{v2Id}/{v2Id1}/sinks/{sinksId}", %{
        "v2Id" => URI.encode(v2_id, &URI.char_unreserved?/1),
        "v2Id1" => URI.encode(v2_id1, &URI.char_unreserved?/1),
        "sinksId" => URI.encode(sinks_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.LogSink{}])
  end
end
