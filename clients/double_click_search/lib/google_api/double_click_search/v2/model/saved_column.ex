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

defmodule GoogleApi.DoubleClickSearch.V2.Model.SavedColumn do
  @moduledoc """
  A saved column

  ## Attributes

  - kind (String.t): Identifies this as a SavedColumn resource. Value: the fixed string doubleclicksearch#savedColumn. Defaults to: `null`.
  - savedColumnName (String.t): The name of the saved column. Defaults to: `null`.
  - type (String.t): The type of data this saved column will produce. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => any(),
          :savedColumnName => any(),
          :type => any()
        }

  field(:kind)
  field(:savedColumnName)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.SavedColumn do
  def decode(value, options) do
    GoogleApi.DoubleClickSearch.V2.Model.SavedColumn.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickSearch.V2.Model.SavedColumn do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
