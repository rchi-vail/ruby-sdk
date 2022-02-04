# freeclimb

Freeclimb - the Ruby gem for the FreeClimb API

FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 3.0.3
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build freeclimb.gemspec
```

Then either install the gem locally:

```shell
gem install ./freeclimb-3.0.3.gem
```

(for development, run `gem install --dev ./freeclimb-3.0.3.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'freeclimb', '~> 3.0.3'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'freeclimb', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'freeclimb'

# Setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new
account_id = 'account_id_example' # String | ID of the account
buy_incoming_number_request = Freeclimb::BuyIncomingNumberRequest.new({phone_number: 'phone_number_example'}) # BuyIncomingNumberRequest | Incoming Number transaction details

begin
  #Buy a Phone Number
  result = api_instance.buy_a_phone_number(buy_incoming_number_request)
  p result
rescue Freeclimb::ApiError => e
  puts "Exception when calling DefaultApi->buy_a_phone_number: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://www.freeclimb.com/apiserver*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Freeclimb::DefaultApi* | [**buy_a_phone_number**](docs/DefaultApi.md#buy_a_phone_number) | **POST** /Accounts/{accountId}/IncomingPhoneNumbers | Buy a Phone Number
*Freeclimb::DefaultApi* | [**create_a_conference**](docs/DefaultApi.md#create_a_conference) | **POST** /Accounts/{accountId}/Conferences | Create a Conference
*Freeclimb::DefaultApi* | [**create_a_queue**](docs/DefaultApi.md#create_a_queue) | **POST** /Accounts/{accountId}/Queues | Create a Queue
*Freeclimb::DefaultApi* | [**create_an_application**](docs/DefaultApi.md#create_an_application) | **POST** /Accounts/{accountId}/Applications | Create an application
*Freeclimb::DefaultApi* | [**delete_a_recording**](docs/DefaultApi.md#delete_a_recording) | **DELETE** /Accounts/{accountId}/Recordings/{recordingId} | Delete a Recording
*Freeclimb::DefaultApi* | [**delete_an_application**](docs/DefaultApi.md#delete_an_application) | **DELETE** /Accounts/{accountId}/Applications/{applicationId} | Delete an application
*Freeclimb::DefaultApi* | [**delete_an_incoming_number**](docs/DefaultApi.md#delete_an_incoming_number) | **DELETE** /Accounts/{accountId}/IncomingPhoneNumbers/{phoneNumberId} | Delete an Incoming Number
*Freeclimb::DefaultApi* | [**dequeue_a_member**](docs/DefaultApi.md#dequeue_a_member) | **POST** /Accounts/{accountId}/Queues/{queueId}/Members/{callId} | Dequeue a Member
*Freeclimb::DefaultApi* | [**dequeue_head_member**](docs/DefaultApi.md#dequeue_head_member) | **POST** /Accounts/{accountId}/Queues/{queueId}/Members/Front | Dequeue Head Member
*Freeclimb::DefaultApi* | [**download_a_recording_file**](docs/DefaultApi.md#download_a_recording_file) | **GET** /Accounts/{accountId}/Recordings/{recordingId}/Download | Download a Recording File
*Freeclimb::DefaultApi* | [**filter_logs**](docs/DefaultApi.md#filter_logs) | **POST** /Accounts/{accountId}/Logs | Filter Logs
*Freeclimb::DefaultApi* | [**get_a_call**](docs/DefaultApi.md#get_a_call) | **GET** /Accounts/{accountId}/Calls/{callId} | Get a Call
*Freeclimb::DefaultApi* | [**get_a_conference**](docs/DefaultApi.md#get_a_conference) | **GET** /Accounts/{accountId}/Conferences/{conferenceId} | Get a Conference
*Freeclimb::DefaultApi* | [**get_a_member**](docs/DefaultApi.md#get_a_member) | **GET** /Accounts/{accountId}/Queues/{queueId}/Members/{callId} | Get a Member
*Freeclimb::DefaultApi* | [**get_a_participant**](docs/DefaultApi.md#get_a_participant) | **GET** /Accounts/{accountId}/Conferences/{conferenceId}/Participants/{callId} | Get a Participant
*Freeclimb::DefaultApi* | [**get_a_queue**](docs/DefaultApi.md#get_a_queue) | **GET** /Accounts/{accountId}/Queues/{queueId} | Get a Queue
*Freeclimb::DefaultApi* | [**get_a_recording**](docs/DefaultApi.md#get_a_recording) | **GET** /Accounts/{accountId}/Recordings/{recordingId} | Get a Recording
*Freeclimb::DefaultApi* | [**get_an_account**](docs/DefaultApi.md#get_an_account) | **GET** /Accounts/{accountId} | Get an Account
*Freeclimb::DefaultApi* | [**get_an_application**](docs/DefaultApi.md#get_an_application) | **GET** /Accounts/{accountId}/Applications/{applicationId} | Get an Application
*Freeclimb::DefaultApi* | [**get_an_incoming_number**](docs/DefaultApi.md#get_an_incoming_number) | **GET** /Accounts/{accountId}/IncomingPhoneNumbers/{phoneNumberId} | Get an Incoming Number
*Freeclimb::DefaultApi* | [**get_an_sms_message**](docs/DefaultApi.md#get_an_sms_message) | **GET** /Accounts/{accountId}/Messages/{messageId} | Get an SMS Message
*Freeclimb::DefaultApi* | [**get_head_member**](docs/DefaultApi.md#get_head_member) | **GET** /Accounts/{accountId}/Queues/{queueId}/Members/Front | Get Head Member
*Freeclimb::DefaultApi* | [**list_active_queues**](docs/DefaultApi.md#list_active_queues) | **GET** /Accounts/{accountId}/Queues | List Active Queues
*Freeclimb::DefaultApi* | [**list_all_account_logs**](docs/DefaultApi.md#list_all_account_logs) | **GET** /Accounts/{accountId}/Logs | List All Account Logs
*Freeclimb::DefaultApi* | [**list_an_application**](docs/DefaultApi.md#list_an_application) | **GET** /Accounts/{accountId}/Applications | List applications
*Freeclimb::DefaultApi* | [**list_available_numbers**](docs/DefaultApi.md#list_available_numbers) | **GET** /AvailablePhoneNumbers | List available numbers
*Freeclimb::DefaultApi* | [**list_call_logs**](docs/DefaultApi.md#list_call_logs) | **GET** /Accounts/{accountId}/Calls/{callId}/Logs | List Call Logs
*Freeclimb::DefaultApi* | [**list_call_recordings**](docs/DefaultApi.md#list_call_recordings) | **GET** /Accounts/{accountId}/Calls/{callId}/Recordings | List Call Recordings
*Freeclimb::DefaultApi* | [**list_calls**](docs/DefaultApi.md#list_calls) | **GET** /Accounts/{accountId}/Calls | List Calls
*Freeclimb::DefaultApi* | [**list_conferences**](docs/DefaultApi.md#list_conferences) | **GET** /Accounts/{accountId}/Conferences | List Conferences
*Freeclimb::DefaultApi* | [**list_incoming_numbers**](docs/DefaultApi.md#list_incoming_numbers) | **GET** /Accounts/{accountId}/IncomingPhoneNumbers | List Incoming Numbers
*Freeclimb::DefaultApi* | [**list_members**](docs/DefaultApi.md#list_members) | **GET** /Accounts/{accountId}/Queues/{queueId}/Members | List Members
*Freeclimb::DefaultApi* | [**list_participants**](docs/DefaultApi.md#list_participants) | **GET** /Accounts/{accountId}/Conferences/{conferenceId}/Participants | List Participants
*Freeclimb::DefaultApi* | [**list_recordings**](docs/DefaultApi.md#list_recordings) | **GET** /Accounts/{accountId}/Recordings | List Recordings
*Freeclimb::DefaultApi* | [**list_sms_messages**](docs/DefaultApi.md#list_sms_messages) | **GET** /Accounts/{accountId}/Messages | List SMS Messages
*Freeclimb::DefaultApi* | [**make_a_call**](docs/DefaultApi.md#make_a_call) | **POST** /Accounts/{accountId}/Calls | Make a Call
*Freeclimb::DefaultApi* | [**remove_a_participant**](docs/DefaultApi.md#remove_a_participant) | **DELETE** /Accounts/{accountId}/Conferences/{conferenceId}/Participants/{callId} | Remove a Participant
*Freeclimb::DefaultApi* | [**send_an_sms_message**](docs/DefaultApi.md#send_an_sms_message) | **POST** /Accounts/{accountId}/Messages | Send an SMS Message
*Freeclimb::DefaultApi* | [**stream_a_recording_file**](docs/DefaultApi.md#stream_a_recording_file) | **GET** /Accounts/{accountId}/Recordings/{recordingId}/Stream | Stream a Recording File
*Freeclimb::DefaultApi* | [**update_a_conference**](docs/DefaultApi.md#update_a_conference) | **POST** /Accounts/{accountId}/Conferences/{conferenceId} | Update a Conference
*Freeclimb::DefaultApi* | [**update_a_live_call**](docs/DefaultApi.md#update_a_live_call) | **POST** /Accounts/{accountId}/Calls/{callId} | Update a Live Call
*Freeclimb::DefaultApi* | [**update_a_participant**](docs/DefaultApi.md#update_a_participant) | **POST** /Accounts/{accountId}/Conferences/{conferenceId}/Participants/{callId} | Update a Participant
*Freeclimb::DefaultApi* | [**update_a_queue**](docs/DefaultApi.md#update_a_queue) | **POST** /Accounts/{accountId}/Queues/{queueId} | Update a Queue
*Freeclimb::DefaultApi* | [**update_an_account**](docs/DefaultApi.md#update_an_account) | **POST** /Accounts/{accountId} | Manage an account
*Freeclimb::DefaultApi* | [**update_an_application**](docs/DefaultApi.md#update_an_application) | **POST** /Accounts/{accountId}/Applications/{applicationId} | Update an application
*Freeclimb::DefaultApi* | [**update_an_incoming_number**](docs/DefaultApi.md#update_an_incoming_number) | **POST** /Accounts/{accountId}/IncomingPhoneNumbers/{phoneNumberId} | Update an Incoming Number


## Documentation for Models

 - [Freeclimb::AccountRequest](docs/AccountRequest.md)
 - [Freeclimb::AccountResult](docs/AccountResult.md)
 - [Freeclimb::AccountResultAllOf](docs/AccountResultAllOf.md)
 - [Freeclimb::AddToConference](docs/AddToConference.md)
 - [Freeclimb::AddToConferenceAllOf](docs/AddToConferenceAllOf.md)
 - [Freeclimb::ApplicationList](docs/ApplicationList.md)
 - [Freeclimb::ApplicationListAllOf](docs/ApplicationListAllOf.md)
 - [Freeclimb::ApplicationRequest](docs/ApplicationRequest.md)
 - [Freeclimb::ApplicationResult](docs/ApplicationResult.md)
 - [Freeclimb::ApplicationResultAllOf](docs/ApplicationResultAllOf.md)
 - [Freeclimb::AvailableNumber](docs/AvailableNumber.md)
 - [Freeclimb::AvailableNumberList](docs/AvailableNumberList.md)
 - [Freeclimb::AvailableNumberListAllOf](docs/AvailableNumberListAllOf.md)
 - [Freeclimb::BuyIncomingNumberRequest](docs/BuyIncomingNumberRequest.md)
 - [Freeclimb::CallList](docs/CallList.md)
 - [Freeclimb::CallListAllOf](docs/CallListAllOf.md)
 - [Freeclimb::CallResult](docs/CallResult.md)
 - [Freeclimb::CallResultAllOf](docs/CallResultAllOf.md)
 - [Freeclimb::Capabilities](docs/Capabilities.md)
 - [Freeclimb::ConferenceList](docs/ConferenceList.md)
 - [Freeclimb::ConferenceListAllOf](docs/ConferenceListAllOf.md)
 - [Freeclimb::ConferenceParticipantList](docs/ConferenceParticipantList.md)
 - [Freeclimb::ConferenceParticipantListAllOf](docs/ConferenceParticipantListAllOf.md)
 - [Freeclimb::ConferenceParticipantResult](docs/ConferenceParticipantResult.md)
 - [Freeclimb::ConferenceParticipantResultAllOf](docs/ConferenceParticipantResultAllOf.md)
 - [Freeclimb::ConferenceResult](docs/ConferenceResult.md)
 - [Freeclimb::ConferenceResultAllOf](docs/ConferenceResultAllOf.md)
 - [Freeclimb::CreateConference](docs/CreateConference.md)
 - [Freeclimb::CreateConferenceAllOf](docs/CreateConferenceAllOf.md)
 - [Freeclimb::CreateConferenceRequest](docs/CreateConferenceRequest.md)
 - [Freeclimb::Dequeue](docs/Dequeue.md)
 - [Freeclimb::Enqueue](docs/Enqueue.md)
 - [Freeclimb::EnqueueAllOf](docs/EnqueueAllOf.md)
 - [Freeclimb::FilterLogsRequest](docs/FilterLogsRequest.md)
 - [Freeclimb::GetDigits](docs/GetDigits.md)
 - [Freeclimb::GetDigitsAllOf](docs/GetDigitsAllOf.md)
 - [Freeclimb::GetSpeech](docs/GetSpeech.md)
 - [Freeclimb::GetSpeechAllOf](docs/GetSpeechAllOf.md)
 - [Freeclimb::Hangup](docs/Hangup.md)
 - [Freeclimb::HangupAllOf](docs/HangupAllOf.md)
 - [Freeclimb::IncomingNumberList](docs/IncomingNumberList.md)
 - [Freeclimb::IncomingNumberListAllOf](docs/IncomingNumberListAllOf.md)
 - [Freeclimb::IncomingNumberRequest](docs/IncomingNumberRequest.md)
 - [Freeclimb::IncomingNumberResult](docs/IncomingNumberResult.md)
 - [Freeclimb::IncomingNumberResultAllOf](docs/IncomingNumberResultAllOf.md)
 - [Freeclimb::LogList](docs/LogList.md)
 - [Freeclimb::LogListAllOf](docs/LogListAllOf.md)
 - [Freeclimb::LogResult](docs/LogResult.md)
 - [Freeclimb::MakeCallRequest](docs/MakeCallRequest.md)
 - [Freeclimb::MessageRequest](docs/MessageRequest.md)
 - [Freeclimb::MessageRequestAllOf](docs/MessageRequestAllOf.md)
 - [Freeclimb::MessageResult](docs/MessageResult.md)
 - [Freeclimb::MessageResultAllOf](docs/MessageResultAllOf.md)
 - [Freeclimb::MessagesList](docs/MessagesList.md)
 - [Freeclimb::MessagesListAllOf](docs/MessagesListAllOf.md)
 - [Freeclimb::MutableResourceModel](docs/MutableResourceModel.md)
 - [Freeclimb::OutDial](docs/OutDial.md)
 - [Freeclimb::OutDialAllOf](docs/OutDialAllOf.md)
 - [Freeclimb::PaginationModel](docs/PaginationModel.md)
 - [Freeclimb::Pause](docs/Pause.md)
 - [Freeclimb::PauseAllOf](docs/PauseAllOf.md)
 - [Freeclimb::PerclCommand](docs/PerclCommand.md)
 - [Freeclimb::PerclScript](docs/PerclScript.md)
 - [Freeclimb::Play](docs/Play.md)
 - [Freeclimb::PlayAllOf](docs/PlayAllOf.md)
 - [Freeclimb::PlayEarlyMedia](docs/PlayEarlyMedia.md)
 - [Freeclimb::PlayEarlyMediaAllOf](docs/PlayEarlyMediaAllOf.md)
 - [Freeclimb::QueueList](docs/QueueList.md)
 - [Freeclimb::QueueListAllOf](docs/QueueListAllOf.md)
 - [Freeclimb::QueueMember](docs/QueueMember.md)
 - [Freeclimb::QueueMemberList](docs/QueueMemberList.md)
 - [Freeclimb::QueueMemberListAllOf](docs/QueueMemberListAllOf.md)
 - [Freeclimb::QueueRequest](docs/QueueRequest.md)
 - [Freeclimb::QueueResult](docs/QueueResult.md)
 - [Freeclimb::QueueResultAllOf](docs/QueueResultAllOf.md)
 - [Freeclimb::RecordUtterance](docs/RecordUtterance.md)
 - [Freeclimb::RecordUtteranceAllOf](docs/RecordUtteranceAllOf.md)
 - [Freeclimb::RecordingList](docs/RecordingList.md)
 - [Freeclimb::RecordingListAllOf](docs/RecordingListAllOf.md)
 - [Freeclimb::RecordingResult](docs/RecordingResult.md)
 - [Freeclimb::RecordingResultAllOf](docs/RecordingResultAllOf.md)
 - [Freeclimb::Redirect](docs/Redirect.md)
 - [Freeclimb::RedirectAllOf](docs/RedirectAllOf.md)
 - [Freeclimb::Reject](docs/Reject.md)
 - [Freeclimb::RejectAllOf](docs/RejectAllOf.md)
 - [Freeclimb::RemoveFromConference](docs/RemoveFromConference.md)
 - [Freeclimb::RemoveFromConferenceAllOf](docs/RemoveFromConferenceAllOf.md)
 - [Freeclimb::Say](docs/Say.md)
 - [Freeclimb::SayAllOf](docs/SayAllOf.md)
 - [Freeclimb::SendDigits](docs/SendDigits.md)
 - [Freeclimb::SendDigitsAllOf](docs/SendDigitsAllOf.md)
 - [Freeclimb::SetListen](docs/SetListen.md)
 - [Freeclimb::SetListenAllOf](docs/SetListenAllOf.md)
 - [Freeclimb::SetTalk](docs/SetTalk.md)
 - [Freeclimb::SetTalkAllOf](docs/SetTalkAllOf.md)
 - [Freeclimb::Sms](docs/Sms.md)
 - [Freeclimb::SmsAllOf](docs/SmsAllOf.md)
 - [Freeclimb::StartRecordCall](docs/StartRecordCall.md)
 - [Freeclimb::TerminateConference](docs/TerminateConference.md)
 - [Freeclimb::TerminateConferenceAllOf](docs/TerminateConferenceAllOf.md)
 - [Freeclimb::UpdateCallRequest](docs/UpdateCallRequest.md)
 - [Freeclimb::UpdateConferenceParticipantRequest](docs/UpdateConferenceParticipantRequest.md)
 - [Freeclimb::UpdateConferenceRequest](docs/UpdateConferenceRequest.md)


## Documentation for Authorization


### fc

- **Type**: HTTP basic authentication

