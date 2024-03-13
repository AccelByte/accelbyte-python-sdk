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

Example: '{"action": "HideContent", "actions": {"banAccount": {"comment": "IxnHf50YFs2Rv1nz", "duration": 90, "reason": "tRuS3L8gYnEJblw6", "skipNotif": true, "type": "sM680StCVm7vF7P2"}, "deleteChat": true, "extensionActionIds": ["iq9ioDA1Fa9XVItu", "NJXgKBsq8Dix3Q5a", "fuW8FlsU66Oq5yQH"], "hideContent": true}, "active": false, "category": "EXTENSION", "extensionCategory": "G45P1M0yFTkCvkzO", "reason": "0P5YgvubrNBuVBGf", "threshold": 34}'
"""

result, error = update_moderation_rule(
    body=body,
    rule_id=rule_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
