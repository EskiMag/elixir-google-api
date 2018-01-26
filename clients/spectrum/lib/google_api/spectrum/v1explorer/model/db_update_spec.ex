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

defmodule GoogleApi.Spectrum.V1explorer.Model.DbUpdateSpec do
  @moduledoc """
  This message is provided by the database to notify devices of an upcoming change to the database URI.

  ## Attributes

  - databases (List[DatabaseSpec]): A required list of one or more databases. A device should update its preconfigured list of databases to replace (only) the database that provided the response with the specified entries. Defaults to: `null`.
  """

  defstruct [
    :"databases"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spectrum.V1explorer.Model.DbUpdateSpec do
  import GoogleApi.Spectrum.V1explorer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"databases", :list, GoogleApi.Spectrum.V1explorer.Model.DatabaseSpec, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spectrum.V1explorer.Model.DbUpdateSpec do
  def encode(value, options) do
    GoogleApi.Spectrum.V1explorer.Deserializer.serialize_non_nil(value, options)
  end
end
