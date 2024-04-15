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

Example: '{"NativeSessionSetting": {"PSNServiceLabel": 89, "PSNSupportedPlatforms": ["FQVzMYCax7dQCfSc", "KfD7h8nNpG7dScjj", "sOvzFhFgWEwWIGuK"], "SessionTitle": "r5D34VMzvQ4TiPej", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "cm1XKHI9DTnzi8Y7", "XboxServiceConfigID": "hE1gmcAVWKmPGiql", "XboxSessionTemplateName": "RXbhZndblIBmRU2d", "XboxTitleID": "suHQ5Nkfr60ULUe5", "localizedSessionName": {"0RJ3XFelRoLiHaGo": {}, "Rmc3DAKQThqYv4ZY": {}, "SHXHOJuPiHfoXoUa": {}}}, "PSNBaseUrl": "aQ8L5Nzd6VlskuZT", "attributes": {"346vjDo3iB8BHeEy": {}, "Myy8eqg0wiAKbyy2": {}, "L8QVoVZIH9gBMUoH": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "1VQUlK3VRnKrxlOW", "deployment": "GphkKMPteihBgwAu", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "KyPWlmHmQrT9BIFc", "enableSecret": false, "fallbackClaimKeys": ["V2btr8sZ6b8zmLrU", "vEh53QmuxlOM8rzC", "3svxgtpdniMEzXwU"], "immutableStorage": false, "inactiveTimeout": 84, "inviteTimeout": 90, "joinability": "rNFL71VOnXhu5YPs", "leaderElectionGracePeriod": 28, "manualRejoin": true, "maxActiveSessions": 41, "maxPlayers": 89, "minPlayers": 30, "name": "gyWriAxaMpMKWxKS", "persistent": false, "preferredClaimKeys": ["urjThOUHNbOgIWjm", "evpkfJFsgkn6ELcz", "GhegAWGFwrMFQQAc"], "requestedRegions": ["gZxB0f9XIqJu5jOh", "5YSWgJ7yRJDTqjmY", "5AfoyHJgzflVlKf8"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "5d2rLCH4ZTkN92Oc"}'
"""

result, error = admin_update_configuration_template_v1(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
