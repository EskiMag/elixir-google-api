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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation do
  @moduledoc """
  A rule for transforming a value.

  ## Attributes

  - bucketingConfig (GooglePrivacyDlpV2BucketingConfig):  Defaults to: `null`.
  - characterMaskConfig (GooglePrivacyDlpV2CharacterMaskConfig):  Defaults to: `null`.
  - cryptoDeterministicConfig (GooglePrivacyDlpV2CryptoDeterministicConfig):  Defaults to: `null`.
  - cryptoHashConfig (GooglePrivacyDlpV2CryptoHashConfig):  Defaults to: `null`.
  - cryptoReplaceFfxFpeConfig (GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig):  Defaults to: `null`.
  - dateShiftConfig (GooglePrivacyDlpV2DateShiftConfig):  Defaults to: `null`.
  - fixedSizeBucketingConfig (GooglePrivacyDlpV2FixedSizeBucketingConfig):  Defaults to: `null`.
  - redactConfig (GooglePrivacyDlpV2RedactConfig):  Defaults to: `null`.
  - replaceConfig (GooglePrivacyDlpV2ReplaceValueConfig):  Defaults to: `null`.
  - replaceWithInfoTypeConfig (GooglePrivacyDlpV2ReplaceWithInfoTypeConfig):  Defaults to: `null`.
  - timePartConfig (GooglePrivacyDlpV2TimePartConfig):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketingConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BucketingConfig.t(),
          :characterMaskConfig =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CharacterMaskConfig.t(),
          :cryptoDeterministicConfig =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoDeterministicConfig.t(),
          :cryptoHashConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoHashConfig.t(),
          :cryptoReplaceFfxFpeConfig =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig.t(),
          :dateShiftConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DateShiftConfig.t(),
          :fixedSizeBucketingConfig =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FixedSizeBucketingConfig.t(),
          :redactConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RedactConfig.t(),
          :replaceConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ReplaceValueConfig.t(),
          :replaceWithInfoTypeConfig =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig.t(),
          :timePartConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TimePartConfig.t()
        }

  field(:bucketingConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BucketingConfig)
  field(:characterMaskConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CharacterMaskConfig)

  field(
    :cryptoDeterministicConfig,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoDeterministicConfig
  )

  field(:cryptoHashConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoHashConfig)

  field(
    :cryptoReplaceFfxFpeConfig,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
  )

  field(:dateShiftConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DateShiftConfig)

  field(
    :fixedSizeBucketingConfig,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FixedSizeBucketingConfig
  )

  field(:redactConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RedactConfig)
  field(:replaceConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ReplaceValueConfig)

  field(
    :replaceWithInfoTypeConfig,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
  )

  field(:timePartConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TimePartConfig)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
