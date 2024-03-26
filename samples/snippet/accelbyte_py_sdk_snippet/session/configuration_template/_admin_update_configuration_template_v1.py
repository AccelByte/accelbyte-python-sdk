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

Example: '{"NativeSessionSetting": {"PSNServiceLabel": 28, "PSNSupportedPlatforms": ["t3gr7vGhqWR4g0Ez", "y3Qxx8EAaWt2X0dz", "4bQRi5Phhh0pgLLI"], "SessionTitle": "07NEenGK1pC70vv9", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "9T0jmhDVgTYjjoLQ", "XboxServiceConfigID": "O6gN2zv2pkqbhcJh", "XboxSessionTemplateName": "7gFOQ3gTrSKJddZH", "XboxTitleID": "8YVU7GDyqnVMUD4S", "localizedSessionName": {"Vw6DPcXrOkxX5RHV": {}, "0QdxIPczEgraCWZj": {}, "X6bLOoZscJtBXTLP": {}}}, "PSNBaseUrl": "er0yUI4lWm2XTBLu", "attributes": {"LAdKniQCzCPGkQZP": {}, "kgRtcfeosKlmwH7u": {}, "HvZtdZ7gxMQEUVz9": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "j3HvZTCg6i0z3KXk", "deployment": "sbM7tLiH8WgXPACI", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "oOS090erTzxLUwKX", "enableSecret": true, "fallbackClaimKeys": ["oYLdBn21IEtLIDZv", "OSnlxIpDErjE13oo", "fJ6pPMtnkIPEkJol"], "immutableStorage": false, "inactiveTimeout": 57, "inviteTimeout": 62, "joinability": "NJpIqIjBdXSpHiCw", "leaderElectionGracePeriod": 83, "manualRejoin": true, "maxActiveSessions": 59, "maxPlayers": 39, "minPlayers": 95, "name": "tkVJAgclk8H8zbyW", "persistent": true, "preferredClaimKeys": ["W1kpfeLTBLutO8zv", "Q7R8RYi97oKZGhSU", "bYbMkyIVlVT9QTyg"], "requestedRegions": ["Gq8zE61o5WS6pJKm", "YGuFLyXRSVKqOmTK", "rx6sZYiXJtbOCbbl"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "Rq0aV3EXPSuAG04z"}'
"""

result, error = admin_update_configuration_template_v1(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
