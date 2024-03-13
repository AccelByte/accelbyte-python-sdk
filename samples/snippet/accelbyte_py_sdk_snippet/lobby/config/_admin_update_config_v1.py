import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_update_config_v1
from accelbyte_py_sdk.api.lobby.models import ModelsConfigReq
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsConfigReq
allow_invite_non_connected_user: bool
allow_join_party_during_matchmaking: bool
auto_kick_on_disconnect: bool
auto_kick_on_disconnect_delay: int
cancel_ticket_on_disconnect: bool
chat_rate_limit_burst: int
chat_rate_limit_duration: int
concurrent_users_limit: int
disable_invitation_on_join_party: bool
enable_chat: bool
entitlement_check: bool
entitlement_item_id: str
general_rate_limit_burst: int
general_rate_limit_duration: int
keep_presence_activity_on_disconnect: bool
max_ds_wait_time: int
max_friends_limit: int
max_party_member: int
profanity_filter: bool
ready_consent_timeout: int
unregister_delay: int

Example: '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 37, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 70, "chatRateLimitDuration": 66, "concurrentUsersLimit": 3, "disableInvitationOnJoinParty": false, "enableChat": true, "entitlementCheck": true, "entitlementItemID": "aEyArKKCWgpqQg5n", "generalRateLimitBurst": 85, "generalRateLimitDuration": 93, "keepPresenceActivityOnDisconnect": true, "maxDSWaitTime": 19, "maxFriendsLimit": 36, "maxPartyMember": 37, "profanityFilter": false, "readyConsentTimeout": 82, "unregisterDelay": 33}'
"""

result, error = admin_update_config_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
