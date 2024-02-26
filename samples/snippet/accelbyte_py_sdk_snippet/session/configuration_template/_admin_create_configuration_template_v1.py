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

Example: '{"NativeSessionSetting": {"PSNServiceLabel": 27, "PSNSupportedPlatforms": ["Yg3Lzr93wESM2oEH", "pUEjB8OULe1exBDE", "bEpquShjm5MBfwqa"], "SessionTitle": "wTLXt2YYxvR3hF2R", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "M0AKawpIL5TUkakp", "XboxServiceConfigID": "s8SXBxAIQpsBLagJ", "XboxSessionTemplateName": "owwoPUgJRLcIiu74", "XboxTitleID": "DUbTnWNorkuON3hy", "localizedSessionName": {"iyUxd7wyRD0HwXgD": {}, "W6I6lYfCLNn4ub5U": {}, "d8V5AODWGcb9FbBs": {}}}, "PSNBaseUrl": "vEPACpmSfDCAHbFm", "attributes": {"0PnPqi1Ep3P1EDjk": {}, "WriQd53z81U7JUlf": {}, "a4t5vpUJ1gvfkRDZ": {}}, "autoJoin": true, "clientVersion": "Wsph68ZCQmlDgCCu", "deployment": "mRQoqxPNXhyYWWYD", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "HToQIKgSavM3PXKh", "enableSecret": false, "fallbackClaimKeys": ["tUba41N0CSPOvbns", "7lZ4oNSmzhtm7xEm", "OOwi91S9b01z3ZFl"], "immutableStorage": false, "inactiveTimeout": 18, "inviteTimeout": 83, "joinability": "NkhuTSer39QMPoUo", "leaderElectionGracePeriod": 56, "manualRejoin": true, "maxActiveSessions": 3, "maxPlayers": 90, "minPlayers": 33, "name": "ic9RrSkMbMfbWJuD", "persistent": true, "preferredClaimKeys": ["VROaC25Mc1GoVloa", "adB3ERvkjGfgdkp8", "xH1nzR5qBvsV4STu"], "requestedRegions": ["rHW3Lbv7AAUp2M0j", "kqLMhVm4Zh58qi9p", "z4972XsNos268qcn"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "zuiNnhYO7ZzLuBIq"}'
"""

result, error = admin_create_configuration_template_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
