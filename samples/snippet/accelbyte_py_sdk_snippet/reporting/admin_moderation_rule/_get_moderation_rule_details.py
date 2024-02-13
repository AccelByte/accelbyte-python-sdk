import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import get_moderation_rule_details
from accelbyte_py_sdk.api.reporting.models import RestapiModerationRuleResponse
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

result, error = get_moderation_rule_details(
    rule_id=rule_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
