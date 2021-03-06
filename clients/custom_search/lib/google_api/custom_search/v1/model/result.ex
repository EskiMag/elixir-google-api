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

defmodule GoogleApi.CustomSearch.V1.Model.Result do
  @moduledoc """


  ## Attributes

  - cacheId (String.t):  Defaults to: `null`.
  - displayLink (String.t):  Defaults to: `null`.
  - fileFormat (String.t):  Defaults to: `null`.
  - formattedUrl (String.t):  Defaults to: `null`.
  - htmlFormattedUrl (String.t):  Defaults to: `null`.
  - htmlSnippet (String.t):  Defaults to: `null`.
  - htmlTitle (String.t):  Defaults to: `null`.
  - image (ResultImage):  Defaults to: `null`.
  - kind (String.t):  Defaults to: `null`.
  - labels ([ResultLabels]):  Defaults to: `null`.
  - link (String.t):  Defaults to: `null`.
  - mime (String.t):  Defaults to: `null`.
  - pagemap (%{optional(String.t) &#x3D;&gt; [Object]}):  Defaults to: `null`.
  - snippet (String.t):  Defaults to: `null`.
  - title (String.t):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cacheId => any(),
          :displayLink => any(),
          :fileFormat => any(),
          :formattedUrl => any(),
          :htmlFormattedUrl => any(),
          :htmlSnippet => any(),
          :htmlTitle => any(),
          :image => GoogleApi.CustomSearch.V1.Model.ResultImage.t(),
          :kind => any(),
          :labels => list(GoogleApi.CustomSearch.V1.Model.ResultLabels.t()),
          :link => any(),
          :mime => any(),
          :pagemap => map(),
          :snippet => any(),
          :title => any()
        }

  field(:cacheId)
  field(:displayLink)
  field(:fileFormat)
  field(:formattedUrl)
  field(:htmlFormattedUrl)
  field(:htmlSnippet)
  field(:htmlTitle)
  field(:image, as: GoogleApi.CustomSearch.V1.Model.ResultImage)
  field(:kind)
  field(:labels, as: GoogleApi.CustomSearch.V1.Model.ResultLabels, type: :list)
  field(:link)
  field(:mime)
  field(:pagemap, type: :map)
  field(:snippet)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.CustomSearch.V1.Model.Result do
  def decode(value, options) do
    GoogleApi.CustomSearch.V1.Model.Result.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CustomSearch.V1.Model.Result do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
