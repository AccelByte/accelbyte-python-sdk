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

Example: '{"action": "HideContent", "actions": {"banAccount": {"comment": "A8c0UFUeu9IC7tR4", "duration": 14, "reason": "RajbpP4F34XuWbmw", "skipNotif": true, "type": "LYrlFHEdCeJncRO7"}, "deleteChat": true, "extensionActionIds": ["vF7GwlDLnMCrJEI1", "MkWA3HaemqKL6Z1A", "0hcoRDdp4RO9Q5t8"], "hideContent": true}, "active": false, "category": "EXTENSION", "extensionCategory": "Tq6jfKCH3R1YnfTS", "reason": "O9OpZXh6PxWCJjwS", "threshold": 27}'
"""

result, error = create_moderation_rule(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
