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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateJobTriggerRequest do
  @moduledoc """
  Request message for CreateJobTrigger.

  ## Attributes

  - jobTrigger (GooglePrivacyDlpV2JobTrigger): The JobTrigger to create. Defaults to: `null`.
  - triggerId (String.t): The trigger id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: &#x60;[a-zA-Z\\\\d-_]+&#x60;. The maximum length is 100 characters. Can be empty to allow the system to generate one. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobTrigger => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2JobTrigger.t(),
          :triggerId => any()
        }

  field(:jobTrigger, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2JobTrigger)
  field(:triggerId)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateJobTriggerRequest do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateJobTriggerRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CreateJobTriggerRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
