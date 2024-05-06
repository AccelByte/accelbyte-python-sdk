import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_update_configuration_template_v1
from accelbyte_py_sdk.api.session.models import ApimodelsConfigurationTemplateResponse
from accelbyte_py_sdk.api.session.models import (
    ApimodelsUpdateConfigurationTemplateRequest,
)
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsUpdateConfigurationTemplateRequest
native_session_setting: ModelsNativeSessionSetting
Definition: ModelsNativeSessionSetting
    psn_service_label: int
    psn_supported_platforms: List[str]
    session_title: str
    should_sync: bool
    xbox_allow_cross_platform: bool
    xbox_sandbox_id: str
    xbox_service_config_id: str
    xbox_session_template_name: str
    xbox_title_id: str
    localized_session_name: Dict[str, Any]
psn_base_url: str
attributes: Dict[str, Any]
auto_join: bool
auto_leave_session: bool
client_version: str
deployment: str
disable_code_generation: bool
ds_manual_set_ready: bool
ds_source: str
enable_secret: bool
fallback_claim_keys: List[str]
immutable_storage: bool
inactive_timeout: int
invite_timeout: int
joinability: str
leader_election_grace_period: int
manual_rejoin: bool
max_active_sessions: int
max_players: int
min_players: int
name: str
persistent: bool
preferred_claim_keys: List[str]
requested_regions: List[str]
text_chat: bool
tie_teams_session_lifetime: bool
type_: str

Example: '{"NativeSessionSetting": {"PSNServiceLabel": 26, "PSNSupportedPlatforms": ["oon19912Ic7LPil5", "BUtrWkbnSjhrYY8f", "ZVryVOt7TpSp1sEO"], "SessionTitle": "k3tLDy1BLjrgAldc", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "wv7Bdd4bBNbe78qw", "XboxServiceConfigID": "XrMFMBZKRgE5fepd", "XboxSessionTemplateName": "msVaf6KpRqVXfHFz", "XboxTitleID": "y5Eq5yn7xPRbpjjG", "localizedSessionName": {"GciAkVyQP85cVgYu": {}, "X7ApsclK7gt7BF0Z": {}, "qcyBzHwl1O4r7vK2": {}}}, "PSNBaseUrl": "WRnTPGo1v1vsVv2Y", "attributes": {"itcNQoGx2HVEQ30R": {}, "i33xVXiJAO4N1lg5": {}, "xi1ONO3jnpcEuLGA": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "7kTw7LvM7uJnXYfD", "deployment": "5jTbObGCfoYcYGH6", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "wxxp7E4KnDQSErC0", "enableSecret": true, "fallbackClaimKeys": ["3Fu0GCsMfnoQifqd", "QaOYSq0tOdEOg4LX", "lHo8Wct2AnnXVJm9"], "immutableStorage": false, "inactiveTimeout": 2, "inviteTimeout": 36, "joinability": "hnsFroCU88r1KxF0", "leaderElectionGracePeriod": 19, "manualRejoin": true, "maxActiveSessions": 90, "maxPlayers": 24, "minPlayers": 64, "name": "Uk5lhwUgWVltdrwY", "persistent": false, "preferredClaimKeys": ["Uw4WsHtrVHFUJ5gO", "LD4avFzy9Ug2SwOi", "QRf6IHdilfYMUHS1"], "requestedRegions": ["FqeNcYsAqFfx5B2l", "caJSr0qAwWR8Xpkz", "XcRchR7673g40AhC"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "r2zqLtEoj6oV1nLc"}'
"""

result, error = admin_update_configuration_template_v1(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
