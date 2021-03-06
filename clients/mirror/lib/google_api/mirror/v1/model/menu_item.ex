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

defmodule GoogleApi.Mirror.V1.Model.MenuItem do
  @moduledoc """
  A custom menu item that can be presented to the user by a timeline item.

  ## Attributes

  - action (String.t): Controls the behavior when the user picks the menu option. Allowed values are:   - CUSTOM - Custom action set by the service. When the user selects this menuItem, the API triggers a notification to your callbackUrl with the userActions.type set to CUSTOM and the userActions.payload set to the ID of this menu item. This is the default value.  - Built-in actions:   - REPLY - Initiate a reply to the timeline item using the voice recording UI. The creator attribute must be set in the timeline item for this menu to be available.  - REPLY_ALL - Same behavior as REPLY. The original timeline item&#39;s recipients will be added to the reply item.  - DELETE - Delete the timeline item.  - SHARE - Share the timeline item with the available contacts.  - READ_ALOUD - Read the timeline item&#39;s speakableText aloud; if this field is not set, read the text field; if none of those fields are set, this menu item is ignored.  - GET_MEDIA_INPUT - Allow users to provide media payloads to Glassware from a menu item (currently, only transcribed text from voice input is supported). Subscribe to notifications when users invoke this menu item to receive the timeline item ID. Retrieve the media from the timeline item in the payload property.  - VOICE_CALL - Initiate a phone call using the timeline item&#39;s creator.phoneNumber attribute as recipient.  - NAVIGATE - Navigate to the timeline item&#39;s location.  - TOGGLE_PINNED - Toggle the isPinned state of the timeline item.  - OPEN_URI - Open the payload of the menu item in the browser.  - PLAY_VIDEO - Open the payload of the menu item in the Glass video player.  - SEND_MESSAGE - Initiate sending a message to the timeline item&#39;s creator:   - If the creator.phoneNumber is set and Glass is connected to an Android phone, the message is an SMS.  - Otherwise, if the creator.email is set, the message is an email. Defaults to: `null`.
  - contextual_command (String.t): The ContextualMenus.Command associated with this MenuItem (e.g. READ_ALOUD). The voice label for this command will be displayed in the voice menu and the touch label will be displayed in the touch menu. Note that the default menu value&#39;s display name will be overriden if you specify this property. Values that do not correspond to a ContextualMenus.Command name will be ignored. Defaults to: `null`.
  - id (String.t): The ID for this menu item. This is generated by the application and is treated as an opaque token. Defaults to: `null`.
  - payload (String.t): A generic payload whose meaning changes depending on this MenuItem&#39;s action.   - When the action is OPEN_URI, the payload is the URL of the website to view.  - When the action is PLAY_VIDEO, the payload is the streaming URL of the video  - When the action is GET_MEDIA_INPUT, the payload is the text transcription of a user&#39;s speech input Defaults to: `null`.
  - removeWhenSelected (boolean()): If set to true on a CUSTOM menu item, that item will be removed from the menu after it is selected. Defaults to: `null`.
  - values ([MenuValue]): For CUSTOM items, a list of values controlling the appearance of the menu item in each of its states. A value for the DEFAULT state must be provided. If the PENDING or CONFIRMED states are missing, they will not be shown. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => any(),
          :contextual_command => any(),
          :id => any(),
          :payload => any(),
          :removeWhenSelected => any(),
          :values => list(GoogleApi.Mirror.V1.Model.MenuValue.t())
        }

  field(:action)
  field(:contextual_command)
  field(:id)
  field(:payload)
  field(:removeWhenSelected)
  field(:values, as: GoogleApi.Mirror.V1.Model.MenuValue, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Mirror.V1.Model.MenuItem do
  def decode(value, options) do
    GoogleApi.Mirror.V1.Model.MenuItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Mirror.V1.Model.MenuItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
