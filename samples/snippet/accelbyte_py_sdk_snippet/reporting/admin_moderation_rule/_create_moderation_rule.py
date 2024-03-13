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

Example: '{"action": "HideContent", "actions": {"banAccount": {"comment": "dCU70IKSxMTlAl0L", "duration": 22, "reason": "h1Q1UwZF0LNSarfv", "skipNotif": true, "type": "Kq4lJCWnXITbcfCo"}, "deleteChat": false, "extensionActionIds": ["LLmyRI2JtPlVIkJo", "XMNELS6mCbTmHEX8", "2Vm1mfqGdjW6Gp0w"], "hideContent": false}, "active": true, "category": "USER", "extensionCategory": "CFBXPPMAN0obX4HJ", "reason": "QSZcmeNOUp6ETHCV", "threshold": 27}'
"""

result, error = create_moderation_rule(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
