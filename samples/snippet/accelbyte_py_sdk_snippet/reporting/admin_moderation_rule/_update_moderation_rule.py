import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import update_moderation_rule
from accelbyte_py_sdk.api.reporting.models import RestapiModerationRuleRequest
from accelbyte_py_sdk.api.reporting.models import RestapiModerationRuleResponse
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

"""
body:
Definition: RestapiModerationRuleRequest
action: str
actions: RestapiModerationRuleActionsRequest
Definition: RestapiModerationRuleActionsRequest
    ban_account: RestapiBanAccountActionRequest
    Definition: RestapiBanAccountActionRequest
        comment: str
        duration: int
        reason: str
        skip_notif: bool
        type_: str
    delete_chat: bool
    extension_action_ids: List[str]
    hide_content: bool
active: bool
category: str
extension_category: str
reason: str
threshold: int

Example: '{"action": "HideContent", "actions": {"banAccount": {"comment": "604sqUOamo41YXUf", "duration": 75, "reason": "ziF2BQkxTf2r4bUh", "skipNotif": false, "type": "9bsGsMTO8PfhsAUW"}, "deleteChat": true, "extensionActionIds": ["H5vW5ZwIbEun4aDV", "SE1d4m7SPCFOxO7M", "Zy1vpnG86ljfmbIF"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "1FHnNdLhlZE8X07Z", "reason": "fiaRHI5jUM53Gd1S", "threshold": 47}'
"""

result, error = update_moderation_rule(
    body=body,
    rule_id=rule_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
