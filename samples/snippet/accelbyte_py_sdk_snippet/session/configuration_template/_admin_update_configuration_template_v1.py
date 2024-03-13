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

Example: '{"NativeSessionSetting": {"PSNServiceLabel": 95, "PSNSupportedPlatforms": ["clrIMxpBRry4CQMp", "JVmMHMfCf3QNvmIi", "mQiuWrN5m8PrTxMb"], "SessionTitle": "2Db1L27gzVOoBUoL", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "n3Ydd1GWD2sza2Kg", "XboxServiceConfigID": "VVhH9AiYWIGVi0uE", "XboxSessionTemplateName": "yGGmEraY6zDGSSTt", "XboxTitleID": "nm28qtbGbNoxpjeh", "localizedSessionName": {"A2i2CoOYLE5fGyGU": {}, "jPyfIFhjH7QQo5of": {}, "o8KAwLYXxs6IHY9Q": {}}}, "PSNBaseUrl": "qi0wSUGScl8gJkSD", "attributes": {"dMPNHnd76AFjkpaG": {}, "WCg3blgRLqfiQm6b": {}, "TU4oqRGdj8EyQyxt": {}}, "autoJoin": true, "clientVersion": "8E2B2Y33FFV0sVEh", "deployment": "4atrUWkejENPgkIi", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "fSZa7f1K6EY54hI2", "enableSecret": false, "fallbackClaimKeys": ["eeMnr7jfkb5EaTHX", "HmrqOhBI6PVqvCxy", "xwvYil0z2UPlZNZY"], "immutableStorage": true, "inactiveTimeout": 76, "inviteTimeout": 5, "joinability": "B0NvVX1oei8Cl9TG", "leaderElectionGracePeriod": 48, "manualRejoin": false, "maxActiveSessions": 54, "maxPlayers": 78, "minPlayers": 28, "name": "M1DWs5yqf4dHXjV8", "persistent": true, "preferredClaimKeys": ["ktCfN2gnlSYvccuj", "Qrc80zPIwMAZ0z4p", "3Oq9hXiJqL2KefIb"], "requestedRegions": ["cMV75ao0NUs5inAH", "4at3LnUMa6REk6uM", "0KLWsgkhwjmY1UGE"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "1JXLVuGpwhaia4xZ"}'
"""

result, error = admin_update_configuration_template_v1(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
