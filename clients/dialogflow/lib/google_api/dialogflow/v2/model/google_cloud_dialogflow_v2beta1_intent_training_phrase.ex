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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentTrainingPhrase do
  @moduledoc """
  Represents an example or template that the agent is trained on.

  ## Attributes

  - name (String.t): Output only. The unique identifier of this training phrase. Defaults to: `null`.
  - parts ([GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart]): Required. The collection of training phrase parts (can be annotated). Fields: &#x60;entity_type&#x60;, &#x60;alias&#x60; and &#x60;user_defined&#x60; should be populated only for the annotated parts of the training phrase. Defaults to: `null`.
  - timesAddedCount (integer()): Optional. Indicates how many times this example or template was added to the intent. Each time a developer adds an existing sample by editing an intent or training, this counter is increased. Defaults to: `null`.
  - type (String.t): Required. The type of the training phrase. Defaults to: `null`.
    - Enum - one of [TYPE_UNSPECIFIED, EXAMPLE, TEMPLATE]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => any(),
          :parts =>
            list(
              GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart.t()
            ),
          :timesAddedCount => any(),
          :type => any()
        }

  field(:name)

  field(
    :parts,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart,
    type: :list
  )

  field(:timesAddedCount)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentTrainingPhrase do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentTrainingPhrase.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentTrainingPhrase do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end