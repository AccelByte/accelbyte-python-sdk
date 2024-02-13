import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import delete_group_predefined_rule_public_v2
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = delete_group_predefined_rule_public_v2(
    allowed_action=allowed_action,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
