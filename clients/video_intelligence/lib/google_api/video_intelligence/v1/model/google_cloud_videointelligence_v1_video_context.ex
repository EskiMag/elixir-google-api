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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1VideoContext do
  @moduledoc """
  Video context and/or feature-specific parameters.

  ## Attributes

  - explicitContentDetectionConfig (GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig): Config for EXPLICIT_CONTENT_DETECTION. Defaults to: `null`.
  - labelDetectionConfig (GoogleCloudVideointelligenceV1LabelDetectionConfig): Config for LABEL_DETECTION. Defaults to: `null`.
  - segments ([GoogleCloudVideointelligenceV1VideoSegment]): Video segments to annotate. The segments may overlap and are not required to be contiguous or span the whole video. If unspecified, each video is treated as a single segment. Defaults to: `null`.
  - shotChangeDetectionConfig (GoogleCloudVideointelligenceV1ShotChangeDetectionConfig): Config for SHOT_CHANGE_DETECTION. Defaults to: `null`.
  - speechTranscriptionConfig (GoogleCloudVideointelligenceV1SpeechTranscriptionConfig): Config for SPEECH_TRANSCRIPTION. Defaults to: `null`.
  - textDetectionConfig (GoogleCloudVideointelligenceV1TextDetectionConfig): Config for TEXT_DETECTION. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :explicitContentDetectionConfig =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig.t(),
          :labelDetectionConfig =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1LabelDetectionConfig.t(),
          :segments =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1VideoSegment.t()
            ),
          :shotChangeDetectionConfig =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1ShotChangeDetectionConfig.t(),
          :speechTranscriptionConfig =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1SpeechTranscriptionConfig.t(),
          :textDetectionConfig =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1TextDetectionConfig.t()
        }

  field(
    :explicitContentDetectionConfig,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig
  )

  field(
    :labelDetectionConfig,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1LabelDetectionConfig
  )

  field(
    :segments,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1VideoSegment,
    type: :list
  )

  field(
    :shotChangeDetectionConfig,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1ShotChangeDetectionConfig
  )

  field(
    :speechTranscriptionConfig,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1SpeechTranscriptionConfig
  )

  field(
    :textDetectionConfig,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1TextDetectionConfig
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1VideoContext do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1VideoContext.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1VideoContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
