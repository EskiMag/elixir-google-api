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

defmodule GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryShipLineItems do
  @moduledoc """


  ## Attributes

  - carrier (String.t): Deprecated. Please use shipmentInfo instead. The carrier handling the shipment. See shipments[].carrier in the  Orders resource representation for a list of acceptable values. Defaults to: `null`.
  - lineItems ([OrderShipmentLineItemShipment]): Line items to ship. Defaults to: `null`.
  - shipmentGroupId (String.t): ID of the shipment group. Required for orders that use the orderinvoices service. Defaults to: `null`.
  - shipmentId (String.t): Deprecated. Please use shipmentInfo instead. The ID of the shipment. Defaults to: `null`.
  - shipmentInfos ([OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo]): Shipment information. This field is repeated because a single line item can be shipped in several packages (and have several tracking IDs). Defaults to: `null`.
  - trackingId (String.t): Deprecated. Please use shipmentInfo instead. The tracking ID for the shipment. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrier => any(),
          :lineItems => list(GoogleApi.Content.V2.Model.OrderShipmentLineItemShipment.t()),
          :shipmentGroupId => any(),
          :shipmentId => any(),
          :shipmentInfos =>
            list(
              GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo.t()
            ),
          :trackingId => any()
        }

  field(:carrier)
  field(:lineItems, as: GoogleApi.Content.V2.Model.OrderShipmentLineItemShipment, type: :list)
  field(:shipmentGroupId)
  field(:shipmentId)

  field(
    :shipmentInfos,
    as: GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo,
    type: :list
  )

  field(:trackingId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryShipLineItems do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryShipLineItems.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrdersCustomBatchRequestEntryShipLineItems do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
