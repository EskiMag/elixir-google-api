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

defmodule GoogleApi.BigQuery.V2.Api.Jobs do
  @moduledoc """
  API calls for all endpoints tagged `Jobs`.
  """

  alias GoogleApi.BigQuery.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Requests that a job be cancelled. This call will return immediately, and the client will need to poll for the job status to see if the cancel completed successfully. Cancelled jobs may still incur costs.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): [Required] Project ID of the job to cancel
  - job_id (String.t): [Required] Job ID of the job to cancel
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :location (String.t): The geographic location of the job. Required except for US and EU. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.JobCancelResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquery_jobs_cancel(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.JobCancelResponse.t()} | {:error, Tesla.Env.t()}
  def bigquery_jobs_cancel(connection, project_id, job_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :location => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/bigquery/v2/projects/{projectId}/jobs/{jobId}/cancel", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "jobId" => URI.encode(job_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.JobCancelResponse{}])
  end

  @doc """
  Returns information about a specific job. Job information is available for a six month period after creation. Requires that you&#39;re the person who ran the job, or have the Is Owner project role.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): [Required] Project ID of the requested job
  - job_id (String.t): [Required] Job ID of the requested job
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :location (String.t): The geographic location of the job. Required except for US and EU. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Job{}} on success
  {:error, info} on failure
  """
  @spec bigquery_jobs_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.Job.t()} | {:error, Tesla.Env.t()}
  def bigquery_jobs_get(connection, project_id, job_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :location => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/bigquery/v2/projects/{projectId}/jobs/{jobId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "jobId" => URI.encode(job_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Job{}])
  end

  @doc """
  Retrieves the results of a query job.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): [Required] Project ID of the query job
  - job_id (String.t): [Required] Job ID of the query job
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :location (String.t): The geographic location where the job should run. Required except for US and EU. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
    - :maxResults (integer()): Maximum number of results to read
    - :pageToken (String.t): Page token, returned by a previous call, to request the next page of results
    - :startIndex (String.t): Zero-based index of the starting row
    - :timeoutMs (integer()): How long to wait for the query to complete, in milliseconds, before returning. Default is 10 seconds. If the timeout passes before the job completes, the &#39;jobComplete&#39; field in the response will be false

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.GetQueryResultsResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquery_jobs_get_query_results(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.GetQueryResultsResponse.t()} | {:error, Tesla.Env.t()}
  def bigquery_jobs_get_query_results(
        connection,
        project_id,
        job_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :location => :query,
      :maxResults => :query,
      :pageToken => :query,
      :startIndex => :query,
      :timeoutMs => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/bigquery/v2/projects/{projectId}/queries/{jobId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "jobId" => URI.encode(job_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.GetQueryResultsResponse{}])
  end

  @doc """
  Starts a new asynchronous job. Requires the Can View project role.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the project that will be billed for the job
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Job): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Job{}} on success
  {:error, info} on failure
  """
  @spec bigquery_jobs_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.Job.t()} | {:error, Tesla.Env.t()}
  def bigquery_jobs_insert(connection, project_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/bigquery/v2/projects/{projectId}/jobs", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Job{}])
  end

  @doc """
  Starts a new asynchronous job. Requires the Can View project role.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the project that will be billed for the job
  - upload_type (String.t): Upload type. Must be \&quot;resumable\&quot;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Job): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec bigquery_jobs_insert_resumable(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def bigquery_jobs_insert_resumable(
        connection,
        project_id,
        upload_type,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/resumable/upload/bigquery/v2/projects/{projectId}/jobs", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Starts a new asynchronous job. Requires the Can View project role.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the project that will be billed for the job
  - upload_type (String.t): Upload type. Must be \&quot;multipart\&quot;.
  - metadata (Job): Job metadata.
  - data (String.t): The file to upload.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Job{}} on success
  {:error, info} on failure
  """
  @spec bigquery_jobs_insert_simple(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          GoogleApi.BigQuery.V2.Model.Job.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.BigQuery.V2.Model.Job.t()} | {:error, Tesla.Env.t()}
  def bigquery_jobs_insert_simple(
        connection,
        project_id,
        upload_type,
        metadata,
        data,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/bigquery/v2/projects/{projectId}/jobs", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:file, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Job{}])
  end

  @doc """
  Lists all jobs that you started in the specified project. Job information is available for a six month period after creation. The job list is sorted in reverse chronological order, by job creation time. Requires the Can View project role, or the Is Owner project role if you set the allUsers property.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the jobs to list
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :allUsers (boolean()): Whether to display jobs owned by all users in the project. Default false
    - :maxCreationTime (String.t): Max value for job creation time, in milliseconds since the POSIX epoch. If set, only jobs created before or at this timestamp are returned
    - :maxResults (integer()): Maximum number of results to return
    - :minCreationTime (String.t): Min value for job creation time, in milliseconds since the POSIX epoch. If set, only jobs created after or at this timestamp are returned
    - :pageToken (String.t): Page token, returned by a previous call, to request the next page of results
    - :projection (String.t): Restrict information returned to a set of selected fields
    - :stateFilter ([String.t]): Filter for job state

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.JobList{}} on success
  {:error, info} on failure
  """
  @spec bigquery_jobs_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.JobList.t()} | {:error, Tesla.Env.t()}
  def bigquery_jobs_list(connection, project_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :allUsers => :query,
      :maxCreationTime => :query,
      :maxResults => :query,
      :minCreationTime => :query,
      :pageToken => :query,
      :projection => :query,
      :stateFilter => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/bigquery/v2/projects/{projectId}/jobs", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.JobList{}])
  end

  @doc """
  Runs a BigQuery SQL query synchronously and returns query results if the query completes within a specified timeout.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the project billed for the query
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (QueryRequest): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.QueryResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquery_jobs_query(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.QueryResponse.t()} | {:error, Tesla.Env.t()}
  def bigquery_jobs_query(connection, project_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/bigquery/v2/projects/{projectId}/queries", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.QueryResponse{}])
  end
end
