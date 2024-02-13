import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import delete_moderation_rule
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

result, error = delete_moderation_rule(
    rule_id=rule_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
