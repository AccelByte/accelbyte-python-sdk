import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import update_moderation_rule_status
from accelbyte_py_sdk.api.reporting.models import RestapiModerationRuleActiveRequest
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

"""
body:
Definition: RestapiModerationRuleActiveRequest
active: bool

Example: '{"active": true}'
"""

result, error = update_moderation_rule_status(
    body=body,
    rule_id=rule_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
