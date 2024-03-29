import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_create_configuration_template_v1
from accelbyte_py_sdk.api.session.models import ApimodelsConfigurationTemplateResponse
from accelbyte_py_sdk.api.session.models import (
    ApimodelsCreateConfigurationTemplateRequest,
)
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsCreateConfigurationTemplateRequest
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

Example: '{"NativeSessionSetting": {"PSNServiceLabel": 98, "PSNSupportedPlatforms": ["Jo0vMejbnW8o4X25", "LCyrCngMWYbHcvJC", "XdyZnuvUGEDB3SXt"], "SessionTitle": "CSlRAO9ri7An7JOa", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "C7eX2m70DT5LVfVJ", "XboxServiceConfigID": "6Qtgw5DG0fL2gLlU", "XboxSessionTemplateName": "N1EgSNcAXshVar7I", "XboxTitleID": "9cETq0SKP8IQYFwV", "localizedSessionName": {"6VBt0VNvWPyqtdI5": {}, "OU5TFuHLBoi2EI04": {}, "X1lmhmqr2V5UXaJn": {}}}, "PSNBaseUrl": "EysloZoYsVOAkKYm", "attributes": {"ggHHZsNvQXT6lWWv": {}, "PuQCikiTobZrBRbB": {}, "BYyFQcY41DsEdJdn": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "TBrLcxpl1M7PHsey", "deployment": "bXsZJTJzWyGE2Cv9", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "6xDsqlkLas35Yhe5", "enableSecret": false, "fallbackClaimKeys": ["4l9xiguqGynMcJqy", "bg2Ah5jsP0dsIDVx", "tkyAnExAVEr4unqu"], "immutableStorage": true, "inactiveTimeout": 62, "inviteTimeout": 83, "joinability": "ILDA4U0HfWYKz9xj", "leaderElectionGracePeriod": 11, "manualRejoin": false, "maxActiveSessions": 84, "maxPlayers": 63, "minPlayers": 87, "name": "Mc0wIqgjObmEf1ae", "persistent": true, "preferredClaimKeys": ["pkvFohBWPqnbIk8L", "ClMOTn4vQyURSuUg", "i9XSmRLl0dOFSCAh"], "requestedRegions": ["4ENX0MSN49IDZQF9", "1VZrpB45De4AAB3U", "N6Wgm7vbl5ROQm6s"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "B2vQwtx5FLjR8pNe"}'
"""

result, error = admin_create_configuration_template_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
