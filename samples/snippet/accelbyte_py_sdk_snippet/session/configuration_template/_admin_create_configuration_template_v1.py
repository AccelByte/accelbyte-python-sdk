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

Example: '{"NativeSessionSetting": {"PSNServiceLabel": 84, "PSNSupportedPlatforms": ["l6DgRiHqQhEFum8j", "N7C7vWeJ05JUDInL", "zXS50Num9EAAl06b"], "SessionTitle": "a3Pn44Ve6kGqJbzb", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "SQIVAX97icC35CkW", "XboxServiceConfigID": "AcX7xhgn05AIop1T", "XboxSessionTemplateName": "LMZbATKbU6PJ48nV", "XboxTitleID": "3RtGExKxUJOKZ0Xh", "localizedSessionName": {"cfpKSCK9bPs5ZJ7E": {}, "MlqvgUbNt9Ack9Dc": {}, "TMfHxXuhEkvea28M": {}}}, "PSNBaseUrl": "9M0d1ftNXkMfjy8M", "attributes": {"6A1nZ3P3oZ0FmkE6": {}, "2brc1x97qwCvFOqz": {}, "8ge66xIJcafz9Fqy": {}}, "autoJoin": false, "clientVersion": "RObuD86McYqM5Ri2", "deployment": "OyGQgbqbI857h3Jn", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "UaOmOp9kIsqy77GV", "enableSecret": true, "fallbackClaimKeys": ["vnQFqoOa0MFFeEDk", "JFi41zIYbRkcOEGR", "KSq3CtL0p68stOSk"], "immutableStorage": true, "inactiveTimeout": 62, "inviteTimeout": 4, "joinability": "YA4h89QrNckuRMql", "leaderElectionGracePeriod": 98, "manualRejoin": false, "maxActiveSessions": 64, "maxPlayers": 70, "minPlayers": 20, "name": "2mHspMz30LBNd0e8", "persistent": false, "preferredClaimKeys": ["GJwtATXoass6aByy", "h7hd2IIPLa9wrL94", "rQIaL4XTlYv6Bile"], "requestedRegions": ["g8B4DZJIBcHOMqAe", "nOTAvTHX0g9VIOe6", "dA08XLZdw5sVPuKO"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "s8osoCcYXi7A1fGb"}'
"""

result, error = admin_create_configuration_template_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
