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

Example: '{"action": "HideContent", "actions": {"banAccount": {"comment": "e8IYqxfVUyQ5s1Zq", "duration": 43, "reason": "XgmAO0mqzVuV3vrz", "skipNotif": true, "type": "vQY50VR9EhWEl3pD"}, "deleteChat": true, "extensionActionIds": ["XTzeGgJ4E3x1rQyR", "OCwwcsmRUjl5hPg3", "pEYpNkcIGrm5VAG9"], "hideContent": true}, "active": true, "category": "USER", "extensionCategory": "rdfJyxCGekNmhkfj", "reason": "WCAv0XfwELnHsxat", "threshold": 16}'
"""

result, error = update_moderation_rule(
    body=body,
    rule_id=rule_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
