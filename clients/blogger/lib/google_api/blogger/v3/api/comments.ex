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

defmodule GoogleApi.Blogger.V3.Api.Comments do
  @moduledoc """
  API calls for all endpoints tagged `Comments`.
  """

  alias GoogleApi.Blogger.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Marks a comment as not spam.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): The ID of the Blog.
  - post_id (String.t): The ID of the Post.
  - comment_id (String.t): The ID of the comment to mark as not spam.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Comment{}} on success
  {:error, info} on failure
  """
  @spec blogger_comments_approve(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Blogger.V3.Model.Comment.t()} | {:error, Tesla.Env.t()}
  def blogger_comments_approve(
        connection,
        blog_id,
        post_id,
        comment_id,
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
      |> Request.url("/blogs/{blogId}/posts/{postId}/comments/{commentId}/approve", %{
        "blogId" => URI.encode(blog_id, &URI.char_unreserved?/1),
        "postId" => URI.encode(post_id, &URI.char_unreserved?/1),
        "commentId" => URI.encode(comment_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Comment{}])
  end

  @doc """
  Delete a comment by ID.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): The ID of the Blog.
  - post_id (String.t): The ID of the Post.
  - comment_id (String.t): The ID of the comment to delete.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec blogger_comments_delete(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def blogger_comments_delete(
        connection,
        blog_id,
        post_id,
        comment_id,
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
      |> Request.method(:delete)
      |> Request.url("/blogs/{blogId}/posts/{postId}/comments/{commentId}", %{
        "blogId" => URI.encode(blog_id, &URI.char_unreserved?/1),
        "postId" => URI.encode(post_id, &URI.char_unreserved?/1),
        "commentId" => URI.encode(comment_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Gets one comment by ID.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): ID of the blog to containing the comment.
  - post_id (String.t): ID of the post to fetch posts from.
  - comment_id (String.t): The ID of the comment to get.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :view (String.t): Access level for the requested comment (default: READER). Note that some comments will require elevated permissions, for example comments where the parent posts which is in a draft state, or comments that are pending moderation.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Comment{}} on success
  {:error, info} on failure
  """
  @spec blogger_comments_get(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.Comment.t()} | {:error, Tesla.Env.t()}
  def blogger_comments_get(
        connection,
        blog_id,
        post_id,
        comment_id,
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
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/blogs/{blogId}/posts/{postId}/comments/{commentId}", %{
        "blogId" => URI.encode(blog_id, &URI.char_unreserved?/1),
        "postId" => URI.encode(post_id, &URI.char_unreserved?/1),
        "commentId" => URI.encode(comment_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Comment{}])
  end

  @doc """
  Retrieves the comments for a post, possibly filtered.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): ID of the blog to fetch comments from.
  - post_id (String.t): ID of the post to fetch posts from.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :endDate (DateTime.t): Latest date of comment to fetch, a date-time with RFC 3339 formatting.
    - :fetchBodies (boolean()): Whether the body content of the comments is included.
    - :maxResults (integer()): Maximum number of comments to include in the result.
    - :pageToken (String.t): Continuation token if request is paged.
    - :startDate (DateTime.t): Earliest date of comment to fetch, a date-time with RFC 3339 formatting.
    - :status ([String.t]): 
    - :view (String.t): Access level with which to view the returned result. Note that some fields require elevated access.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.CommentList{}} on success
  {:error, info} on failure
  """
  @spec blogger_comments_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.CommentList.t()} | {:error, Tesla.Env.t()}
  def blogger_comments_list(connection, blog_id, post_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :endDate => :query,
      :fetchBodies => :query,
      :maxResults => :query,
      :pageToken => :query,
      :startDate => :query,
      :status => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/blogs/{blogId}/posts/{postId}/comments", %{
        "blogId" => URI.encode(blog_id, &URI.char_unreserved?/1),
        "postId" => URI.encode(post_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.CommentList{}])
  end

  @doc """
  Retrieves the comments for a blog, across all posts, possibly filtered.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): ID of the blog to fetch comments from.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :endDate (DateTime.t): Latest date of comment to fetch, a date-time with RFC 3339 formatting.
    - :fetchBodies (boolean()): Whether the body content of the comments is included.
    - :maxResults (integer()): Maximum number of comments to include in the result.
    - :pageToken (String.t): Continuation token if request is paged.
    - :startDate (DateTime.t): Earliest date of comment to fetch, a date-time with RFC 3339 formatting.
    - :status ([String.t]): 

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.CommentList{}} on success
  {:error, info} on failure
  """
  @spec blogger_comments_list_by_blog(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Blogger.V3.Model.CommentList.t()} | {:error, Tesla.Env.t()}
  def blogger_comments_list_by_blog(connection, blog_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :endDate => :query,
      :fetchBodies => :query,
      :maxResults => :query,
      :pageToken => :query,
      :startDate => :query,
      :status => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/blogs/{blogId}/comments", %{
        "blogId" => URI.encode(blog_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.CommentList{}])
  end

  @doc """
  Marks a comment as spam.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): The ID of the Blog.
  - post_id (String.t): The ID of the Post.
  - comment_id (String.t): The ID of the comment to mark as spam.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Comment{}} on success
  {:error, info} on failure
  """
  @spec blogger_comments_mark_as_spam(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Blogger.V3.Model.Comment.t()} | {:error, Tesla.Env.t()}
  def blogger_comments_mark_as_spam(
        connection,
        blog_id,
        post_id,
        comment_id,
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
      |> Request.url("/blogs/{blogId}/posts/{postId}/comments/{commentId}/spam", %{
        "blogId" => URI.encode(blog_id, &URI.char_unreserved?/1),
        "postId" => URI.encode(post_id, &URI.char_unreserved?/1),
        "commentId" => URI.encode(comment_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Comment{}])
  end

  @doc """
  Removes the content of a comment.

  ## Parameters

  - connection (GoogleApi.Blogger.V3.Connection): Connection to server
  - blog_id (String.t): The ID of the Blog.
  - post_id (String.t): The ID of the Post.
  - comment_id (String.t): The ID of the comment to delete content from.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Blogger.V3.Model.Comment{}} on success
  {:error, info} on failure
  """
  @spec blogger_comments_remove_content(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Blogger.V3.Model.Comment.t()} | {:error, Tesla.Env.t()}
  def blogger_comments_remove_content(
        connection,
        blog_id,
        post_id,
        comment_id,
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
      |> Request.url("/blogs/{blogId}/posts/{postId}/comments/{commentId}/removecontent", %{
        "blogId" => URI.encode(blog_id, &URI.char_unreserved?/1),
        "postId" => URI.encode(post_id, &URI.char_unreserved?/1),
        "commentId" => URI.encode(comment_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Blogger.V3.Model.Comment{}])
  end
end
