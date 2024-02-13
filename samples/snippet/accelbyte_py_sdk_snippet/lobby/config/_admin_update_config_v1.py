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

Example: '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 8, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 91, "chatRateLimitDuration": 29, "concurrentUsersLimit": 62, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "1w98I4iVPJtCcrLd", "generalRateLimitBurst": 75, "generalRateLimitDuration": 43, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 71, "maxFriendsLimit": 42, "maxPartyMember": 37, "profanityFilter": false, "readyConsentTimeout": 8, "unregisterDelay": 80}'
"""

result, error = admin_update_config_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
