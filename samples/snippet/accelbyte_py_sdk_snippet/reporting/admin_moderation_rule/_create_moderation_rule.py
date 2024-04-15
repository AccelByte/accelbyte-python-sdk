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

Example: '{"action": "HideContent", "actions": {"banAccount": {"comment": "TapBtA3ZzaV3xuyi", "duration": 19, "reason": "LZx5LBuZ61IsVdNo", "skipNotif": true, "type": "SVi9gRFSSPf3vNno"}, "deleteChat": false, "extensionActionIds": ["bUKTLQVQNE79iGYN", "Lom1nrn3b6xmhTVZ", "W1bUQqVyKW4hSOZK"], "hideContent": false}, "active": false, "category": "USER", "extensionCategory": "tm5nBRwsFEFNP1Ka", "reason": "84ry3y4USGGgZ5IF", "threshold": 52}'
"""

result, error = create_moderation_rule(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
