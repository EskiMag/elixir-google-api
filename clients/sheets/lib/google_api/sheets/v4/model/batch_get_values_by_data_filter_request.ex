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

defmodule GoogleApi.Sheets.V4.Model.BatchGetValuesByDataFilterRequest do
  @moduledoc """
  The request for retrieving a range of values in a spreadsheet selected by a set of DataFilters.

  ## Attributes

  - dataFilters ([DataFilter]): The data filters used to match the ranges of values to retrieve.  Ranges that match any of the specified data filters will be included in the response. Defaults to: `null`.
  - dateTimeRenderOption (String.t): How dates, times, and durations should be represented in the output. This is ignored if value_render_option is FORMATTED_VALUE. The default dateTime render option is [DateTimeRenderOption.SERIAL_NUMBER]. Defaults to: `null`.
    - Enum - one of [SERIAL_NUMBER, FORMATTED_STRING]
  - majorDimension (String.t): The major dimension that results should use.  For example, if the spreadsheet data is: &#x60;A1&#x3D;1,B1&#x3D;2,A2&#x3D;3,B2&#x3D;4&#x60;, then a request that selects that range and sets &#x60;majorDimension&#x3D;ROWS&#x60; will return &#x60;[[1,2],[3,4]]&#x60;, whereas a request that sets &#x60;majorDimension&#x3D;COLUMNS&#x60; will return &#x60;[[1,3],[2,4]]&#x60;. Defaults to: `null`.
    - Enum - one of [DIMENSION_UNSPECIFIED, ROWS, COLUMNS]
  - valueRenderOption (String.t): How values should be represented in the output. The default render option is ValueRenderOption.FORMATTED_VALUE. Defaults to: `null`.
    - Enum - one of [FORMATTED_VALUE, UNFORMATTED_VALUE, FORMULA]
  """

  @type t :: %__MODULE__{
          dataFilters: list(GoogleApi.Sheets.V4.Model.DataFilter.t()),
          dateTimeRenderOption: any(),
          majorDimension: any(),
          valueRenderOption: any()
        }

  defstruct [
    :dataFilters,
    :dateTimeRenderOption,
    :majorDimension,
    :valueRenderOption
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BatchGetValuesByDataFilterRequest do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:dataFilters, :list, GoogleApi.Sheets.V4.Model.DataFilter, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BatchGetValuesByDataFilterRequest do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end