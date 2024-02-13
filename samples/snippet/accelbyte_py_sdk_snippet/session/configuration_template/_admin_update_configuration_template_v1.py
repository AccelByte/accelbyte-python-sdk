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

Example: '{"NativeSessionSetting": {"PSNServiceLabel": 77, "PSNSupportedPlatforms": ["VitDcwu7r8ppi9Y0", "q9QM9OaGvyDZIpMj", "PN7Jc4y4wxStelaR"], "SessionTitle": "ykjA7cEMovWw66u0", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "PFqeGhAaoYGF2SEm", "XboxServiceConfigID": "aJAQHzcKw35JiGPs", "XboxSessionTemplateName": "EquC5cg2xQNXdRav", "XboxTitleID": "SS4nUAFhibjIaP8j", "localizedSessionName": {"icf6Cl5uQhiyW8Ku": {}, "SUgXdKDmGnuk1eDU": {}, "Qnh6lfEgukjOCxXB": {}}}, "PSNBaseUrl": "QIhIjkHZZtgGWycr", "attributes": {"A6dRWVLtMU6jcFqn": {}, "ukHk3PjO6gKDIdfU": {}, "aWOQzywWL1n2oWPz": {}}, "autoJoin": true, "clientVersion": "UvQiFWj5e0H44eLx", "deployment": "NwnnLwWpxOPZpK12", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "HGM12yRgGAuXjR4S", "enableSecret": false, "fallbackClaimKeys": ["E6hU41lVpFTyKdtf", "ntYCJfqD0tKEfrA3", "7AT1MPOaLHIoFfJO"], "immutableStorage": true, "inactiveTimeout": 38, "inviteTimeout": 66, "joinability": "25v0mzNeNRYSuWAT", "leaderElectionGracePeriod": 57, "manualRejoin": true, "maxActiveSessions": 3, "maxPlayers": 51, "minPlayers": 83, "name": "j1iy0oCRgfW83QtJ", "persistent": true, "preferredClaimKeys": ["SfwY93Qi4C7iqcCS", "DlwVLW0mNE48hUGl", "T3HignSLuEP16fnC"], "requestedRegions": ["JmzAlecCV2DEVFrP", "gy7cVcQHqB7poonB", "bv7ADudmqBiDRJba"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "MFpGOsZCRtYKLlsI"}'
"""

result, error = admin_update_configuration_template_v1(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
