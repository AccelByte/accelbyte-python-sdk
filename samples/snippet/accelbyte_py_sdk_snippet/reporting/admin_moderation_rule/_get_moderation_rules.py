import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import get_moderation_rules
from accelbyte_py_sdk.api.reporting.models import RestapiModerationRulesList
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

result, error = get_moderation_rules(
    category=category,
    extension_category=extension_category,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
