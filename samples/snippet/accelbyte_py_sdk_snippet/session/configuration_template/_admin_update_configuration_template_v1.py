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

Example: '{"NativeSessionSetting": {"PSNServiceLabel": 81, "PSNSupportedPlatforms": ["cltly6auCquFOtTM", "SHV10Pa4w9zYsGSX", "dQ6A3JJcRIIr56Wg"], "SessionTitle": "m4lmN63c9P75y3Jy", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "4APFDtc6Vb4Dpiws", "XboxServiceConfigID": "RXYAK5IWn2RA1ejJ", "XboxSessionTemplateName": "BTkRrKygutb20WH7", "XboxTitleID": "3APMeRuxUiSTr8YU", "localizedSessionName": {"1qjIFU7P0OnF6EJ7": {}, "hjWsFEpOGmUIJO8J": {}, "MROcQFL4z60ViKQ4": {}}}, "PSNBaseUrl": "ARhsoJkOxoqoCynY", "attributes": {"pIpl5bPu776yP5nW": {}, "BQWg5bfKmkTVbuWz": {}, "yrbzeOAhH2llhVF7": {}}, "autoJoin": false, "clientVersion": "G6YtfISugwNTHw0G", "deployment": "F8lxTbXhsjUfVwwt", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "B4Lh3VofwvsYUiAM", "enableSecret": true, "fallbackClaimKeys": ["QGfHsrneaa0QuGbB", "xlBV3Wwzox5O0P5z", "VoOTXpX5i2mootAc"], "immutableStorage": true, "inactiveTimeout": 60, "inviteTimeout": 58, "joinability": "kxpH3mWT0kH5LgVf", "leaderElectionGracePeriod": 80, "manualRejoin": true, "maxActiveSessions": 41, "maxPlayers": 14, "minPlayers": 7, "name": "pCEtu4xm45vlm6wY", "persistent": false, "preferredClaimKeys": ["SJVoWSBt0cFt9oeW", "1PJ4HK15shXQTKil", "IbKacvNS182emLGe"], "requestedRegions": ["WBUpDwh7HYALCtSw", "Imsz7WCbpdzRj1dz", "yz3QA0dr79j4Me6x"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "V4qaBHMPfBARiALU"}'
"""

result, error = admin_update_configuration_template_v1(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
