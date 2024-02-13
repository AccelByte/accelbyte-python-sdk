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

Example: '{"action": "HideContent", "actions": {"banAccount": {"comment": "FidmazTj3hywmIXa", "duration": 55, "reason": "OvQeYhIHhQVyAXWs", "skipNotif": true, "type": "MpPVCMzh0rj6oPe2"}, "deleteChat": true, "extensionActionIds": ["an52X7B7fy7SLc08", "Ggx7ABnvgTEZae8X", "2EQPo138KQQwfEZ2"], "hideContent": false}, "active": true, "category": "UGC", "extensionCategory": "8ttyxuKO7TwNFWnP", "reason": "up0h8ih4jOM6e4kQ", "threshold": 9}'
"""

result, error = update_moderation_rule(
    body=body,
    rule_id=rule_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
