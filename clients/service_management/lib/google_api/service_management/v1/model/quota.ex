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

defmodule GoogleApi.ServiceManagement.V1.Model.Quota do
  @moduledoc """


  ## Attributes

  - limits ([QuotaLimit]): List of &#x60;QuotaLimit&#x60; definitions for the service. Defaults to: `null`.
  - metricRules ([MetricRule]): List of &#x60;MetricRule&#x60; definitions, each one mapping a selected method to one or more metrics. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :limits => list(GoogleApi.ServiceManagement.V1.Model.QuotaLimit.t()),
          :metricRules => list(GoogleApi.ServiceManagement.V1.Model.MetricRule.t())
        }

  field(:limits, as: GoogleApi.ServiceManagement.V1.Model.QuotaLimit, type: :list)
  field(:metricRules, as: GoogleApi.ServiceManagement.V1.Model.MetricRule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Quota do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.Quota.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.Quota do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
