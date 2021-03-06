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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame do
  @moduledoc """
  Video frame level annotation results for explicit content.

  ## Attributes

  - pornographyLikelihood (String.t): Likelihood of the pornography content.. Defaults to: `null`.
    - Enum - one of [LIKELIHOOD_UNSPECIFIED, VERY_UNLIKELY, UNLIKELY, POSSIBLE, LIKELY, VERY_LIKELY]
  - timeOffset (String.t): Time-offset, relative to the beginning of the video, corresponding to the video frame for this location. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pornographyLikelihood => any(),
          :timeOffset => any()
        }

  field(:pornographyLikelihood)
  field(:timeOffset)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1ExplicitContentFrame do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
