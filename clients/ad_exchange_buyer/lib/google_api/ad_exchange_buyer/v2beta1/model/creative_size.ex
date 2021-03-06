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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeSize do
  @moduledoc """
  Specifies the size of the creative.

  ## Attributes

  - allowedFormats ([String.t]): What formats are allowed by the publisher. If this repeated field is empty then all formats are allowed. For example, if this field contains AllowedFormatType.AUDIO then the publisher only allows an audio ad (without any video). Defaults to: `null`.
    - Enum - one of 
  - companionSizes ([Size]): For video creatives specifies the sizes of companion ads (if present). Companion sizes may be filled in only when creative_size_type &#x3D; VIDEO Defaults to: `null`.
  - creativeSizeType (String.t): The creative size type. Defaults to: `null`.
    - Enum - one of [CREATIVE_SIZE_TYPE_UNSPECIFIED, REGULAR, INTERSTITIAL, VIDEO, NATIVE]
  - nativeTemplate (String.t): The native template for this creative. It will have a value only if creative_size_type &#x3D; CreativeSizeType.NATIVE. @OutputOnly Defaults to: `null`.
    - Enum - one of [UNKNOWN_NATIVE_TEMPLATE, NATIVE_CONTENT_AD, NATIVE_APP_INSTALL_AD, NATIVE_VIDEO_CONTENT_AD, NATIVE_VIDEO_APP_INSTALL_AD]
  - size (Size): For regular or video creative size type, specifies the size of the creative Defaults to: `null`.
  - skippableAdType (String.t): The type of skippable ad for this creative. It will have a value only if creative_size_type &#x3D; CreativeSizeType.VIDEO. Defaults to: `null`.
    - Enum - one of [SKIPPABLE_AD_TYPE_UNSPECIFIED, GENERIC, INSTREAM_SELECT, NOT_SKIPPABLE]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedFormats => list(any()),
          :companionSizes => list(GoogleApi.AdExchangeBuyer.V2beta1.Model.Size.t()),
          :creativeSizeType => any(),
          :nativeTemplate => any(),
          :size => GoogleApi.AdExchangeBuyer.V2beta1.Model.Size.t(),
          :skippableAdType => any()
        }

  field(:allowedFormats, type: :list)
  field(:companionSizes, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Size, type: :list)
  field(:creativeSizeType)
  field(:nativeTemplate)
  field(:size, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Size)
  field(:skippableAdType)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeSize do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeSize.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeSize do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
