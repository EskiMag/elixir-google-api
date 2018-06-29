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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata do
  @moduledoc """
  Metadata entries that can be attached to a &#x60;Device&#x60;. To learn more, read [Device metadata](/zero-touch/guides/metadata).

  ## Attributes

  - entries (%{optional(String.t) &#x3D;&gt; String.t}): Metadata entries recorded as key-value pairs. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entries => map()
        }

  field(:entries, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
