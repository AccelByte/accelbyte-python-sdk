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

Example: '{"action": "HideContent", "actions": {"banAccount": {"comment": "8LJMcL7aOOjK9mfj", "duration": 50, "reason": "pxUvwfJHq6D5xO7k", "skipNotif": false, "type": "xJCd21NpqrZKLgTN"}, "deleteChat": false, "extensionActionIds": ["X77EUNlpfgZG1BXk", "9PiRZktxZvxsngPw", "grbUUnvMcli3sH1w"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "5JqTRyCI6Vq2lbkZ", "reason": "8DjYO4ZnLOR2H0uW", "threshold": 65}'
"""

result, error = create_moderation_rule(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
