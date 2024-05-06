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

Example: '{"action": "HideContent", "actions": {"banAccount": {"comment": "wo4Mf1mKjFZaFkPl", "duration": 22, "reason": "VRchN6CmtVIr5Rjw", "skipNotif": true, "type": "m37xmJt106G9PulQ"}, "deleteChat": false, "extensionActionIds": ["YuO4niU3LX5GyHY3", "3eU6pXxGMx7fn7PB", "Yk9mYkZgldM2MR45"], "hideContent": true}, "active": true, "category": "USER", "extensionCategory": "2aEEkVLQEjy0mhad", "reason": "SW7PyZTL1vd85cVR", "threshold": 62}'
"""

result, error = create_moderation_rule(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
