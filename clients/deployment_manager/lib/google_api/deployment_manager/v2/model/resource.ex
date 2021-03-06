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

defmodule GoogleApi.DeploymentManager.V2.Model.Resource do
  @moduledoc """


  ## Attributes

  - accessControl (ResourceAccessControl): The Access Control Policy set on this resource. Defaults to: `null`.
  - finalProperties (String.t): Output only. The evaluated properties of the resource with references expanded. Returned as serialized YAML. Defaults to: `null`.
  - id (String.t):  Defaults to: `null`.
  - insertTime (String.t): Output only. Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - manifest (String.t): Output only. URL of the manifest representing the current configuration of this resource. Defaults to: `null`.
  - name (String.t): Output only. The name of the resource as it appears in the YAML config. Defaults to: `null`.
  - properties (String.t): Output only. The current properties of the resource before any references have been filled in. Returned as serialized YAML. Defaults to: `null`.
  - type (String.t): Output only. The type of the resource, for example compute.v1.instance, or cloudfunctions.v1beta1.function. Defaults to: `null`.
  - update (ResourceUpdate): Output only. If Deployment Manager is currently updating or previewing an update to this resource, the updated configuration appears here. Defaults to: `null`.
  - updateTime (String.t): Output only. Update timestamp in RFC3339 text format. Defaults to: `null`.
  - url (String.t): Output only. The URL of the actual resource. Defaults to: `null`.
  - warnings ([OperationWarnings]): Output only. If warning messages are generated during processing of this resource, this field will be populated. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessControl => GoogleApi.DeploymentManager.V2.Model.ResourceAccessControl.t(),
          :finalProperties => any(),
          :id => any(),
          :insertTime => any(),
          :manifest => any(),
          :name => any(),
          :properties => any(),
          :type => any(),
          :update => GoogleApi.DeploymentManager.V2.Model.ResourceUpdate.t(),
          :updateTime => any(),
          :url => any(),
          :warnings => list(GoogleApi.DeploymentManager.V2.Model.OperationWarnings.t())
        }

  field(:accessControl, as: GoogleApi.DeploymentManager.V2.Model.ResourceAccessControl)
  field(:finalProperties)
  field(:id)
  field(:insertTime)
  field(:manifest)
  field(:name)
  field(:properties)
  field(:type)
  field(:update, as: GoogleApi.DeploymentManager.V2.Model.ResourceUpdate)
  field(:updateTime)
  field(:url)
  field(:warnings, as: GoogleApi.DeploymentManager.V2.Model.OperationWarnings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DeploymentManager.V2.Model.Resource do
  def decode(value, options) do
    GoogleApi.DeploymentManager.V2.Model.Resource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeploymentManager.V2.Model.Resource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
