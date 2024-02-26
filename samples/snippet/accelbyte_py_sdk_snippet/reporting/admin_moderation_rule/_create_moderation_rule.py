import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import create_moderation_rule
from accelbyte_py_sdk.api.reporting.models import RestapiModerationRuleRequest
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

Example: '{"action": "HideContent", "actions": {"banAccount": {"comment": "tD7G0dZg5VgC1JRw", "duration": 56, "reason": "WcLrOG1pskSEplTG", "skipNotif": false, "type": "PIa0s5vG8Rcp5rFQ"}, "deleteChat": true, "extensionActionIds": ["Zj5CxLuMlQgYPJOL", "garAfe63kECJleRK", "HURmGxj2kuAAvKCr"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "bMEDXwzPnRXBvOB1", "reason": "OvUjW8s80Wk3SFlK", "threshold": 16}'
"""

result, error = create_moderation_rule(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
