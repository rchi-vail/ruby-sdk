# Freeclimb::MessageResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | The URI for this resource, relative to /apiserver. | [optional] |
| **date_created** | **String** | The date that this resource was created (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **date_updated** | **String** | The date that this resource was last updated (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **revision** | **Integer** | Revision count for the resource. This count is set to 1 on creation and is incremented every time it is updated. | [optional] |
| **account_id** | **String** | String that uniquely identifies this account resource. | [optional] |
| **message_id** | **String** | String that uniquely identifies this message resource | [optional] |
| **status** | **String** | Indicates the state of the message through the message lifecycle including: new, queued, rejected, sending, sent, failed, received, undelivered, expired, deleted, and unknown | [optional] |
| **from** | **String** | Phone number in E.164 format that sent the message. | [optional] |
| **to** | **String** | Phone number in E.164 format that received the message. | [optional] |
| **text** | **String** | Message contents | [optional] |
| **direction** | **String** | Noting whether the message was inbound or outbound | [optional] |
| **notification_url** | **String** | URL invoked when message sent | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::MessageResult.new(
  uri: null,
  date_created: null,
  date_updated: null,
  revision: null,
  account_id: null,
  message_id: null,
  status: null,
  from: null,
  to: null,
  text: null,
  direction: null,
  notification_url: null
)
```

