import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_group_custom_rule_public_v2
from accelbyte_py_sdk.api.group.models import ModelsGroupResponseV1
from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupCustomRuleRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateGroupCustomRuleRequestV1
group_custom_rule: Dict[str, Any]

Example: '{"groupCustomRule": {"Yrv5nePJiYstPq0h": {}, "e628MixO6q3w2NeB": {}, "0d60CLxyy7m9laDM": {}}}'
"""

result, error = update_group_custom_rule_public_v2(
    body=body,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
