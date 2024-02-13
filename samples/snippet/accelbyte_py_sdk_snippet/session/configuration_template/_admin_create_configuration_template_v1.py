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

Example: '{"NativeSessionSetting": {"PSNServiceLabel": 47, "PSNSupportedPlatforms": ["HKJ1dKmVJi0012dv", "K4d8ISrCLtpfXinr", "7q6gTfxr1Va0zQgO"], "SessionTitle": "wW2jJbkrQWVSwlKw", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "AGgasawEYnnbYx5n", "XboxServiceConfigID": "WDGBZKB8YwbUXIcR", "XboxSessionTemplateName": "IcZ6KhFAmmzP0bXo", "XboxTitleID": "ym40FslyJ8pQCVMn", "localizedSessionName": {"10EZvoHLmZJPyy76": {}, "J5X4356mg3BW7Ljt": {}, "MSZo2VPC73YAxGfT": {}}}, "PSNBaseUrl": "gsypoXTzZfXPK2wb", "attributes": {"lcZUgjVXszXPqste": {}, "V3jlRq8SJZS4kdrC": {}, "KndqJJ4KkkPoKd8g": {}}, "autoJoin": true, "clientVersion": "PknspAHLetM6LXqv", "deployment": "M3dOpoUMJMoh7g2l", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "u8SvHE131DJecr31", "enableSecret": true, "fallbackClaimKeys": ["7SsLkB9Xawh0hbgp", "DcGDRhZUjjGuPUtZ", "KAKs1Oe8FrKc8mdX"], "immutableStorage": false, "inactiveTimeout": 54, "inviteTimeout": 100, "joinability": "5PE02Om2rqki2THL", "leaderElectionGracePeriod": 91, "manualRejoin": false, "maxActiveSessions": 81, "maxPlayers": 18, "minPlayers": 14, "name": "p1avFxLvQD0iJaxb", "persistent": true, "preferredClaimKeys": ["zhRlE0tHatEWccxg", "KYsCcTLvwBmhyyiq", "rMlDbSDzznZnxeLk"], "requestedRegions": ["PzaODsWIQ7wc9fy3", "m899RhsVqgAnrC7k", "tuLH5bhbHgP9RpKu"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "YRgw5oWqYkPlQZ8r"}'
"""

result, error = admin_create_configuration_template_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
