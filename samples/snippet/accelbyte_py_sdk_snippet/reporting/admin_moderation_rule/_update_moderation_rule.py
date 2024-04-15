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

Example: '{"action": "HideContent", "actions": {"banAccount": {"comment": "ytNqk9kqzQ6DxnX8", "duration": 67, "reason": "EH3B47Cb4jXjzZC8", "skipNotif": false, "type": "CD230awcKRMXxwpD"}, "deleteChat": true, "extensionActionIds": ["YLpUzClS9Ujj9W3y", "mfmHjaN2ZmqYGusH", "wFO6uHsHyEjRP7ce"], "hideContent": false}, "active": false, "category": "USER", "extensionCategory": "MeKXtkYAj0fo7pOW", "reason": "agISaP0Cdaj7nqUY", "threshold": 82}'
"""

result, error = update_moderation_rule(
    body=body,
    rule_id=rule_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
