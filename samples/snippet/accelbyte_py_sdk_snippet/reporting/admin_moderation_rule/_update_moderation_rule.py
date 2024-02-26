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

Example: '{"action": "HideContent", "actions": {"banAccount": {"comment": "IEI2yWscTy11dlGH", "duration": 60, "reason": "tWvR5DyajO7gDFjL", "skipNotif": false, "type": "MfhIk7uFPeJkizJe"}, "deleteChat": false, "extensionActionIds": ["L4b6HiyxnT3c1C8o", "1k9aKHlUgstj8vfF", "Ng7n1Zu5Q0fkHlfr"], "hideContent": true}, "active": false, "category": "EXTENSION", "extensionCategory": "R1ejj52pOTAz6AZf", "reason": "3tKBOL5VKzMtUEyL", "threshold": 73}'
"""

result, error = update_moderation_rule(
    body=body,
    rule_id=rule_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
