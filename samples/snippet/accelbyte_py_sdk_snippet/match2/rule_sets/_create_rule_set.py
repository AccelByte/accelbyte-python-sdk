import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import create_rule_set
from accelbyte_py_sdk.api.match2.models import ApiRuleSetPayload
from accelbyte_py_sdk.api.match2.models import ResponseError

"""
body:
Definition: ApiRuleSetPayload
data: Dict[str, Any]
enable_custom_match_function: bool
name: str

Example: '{"data": {"oxkdagSE3zEAB9Xq": {}, "8qvnB4LY4E0AlB98": {}, "s97Gdt27O3E3KOk2": {}}, "enable_custom_match_function": false, "name": "OTEMi24AFtYJ72BV"}'
"""

result, error = create_rule_set(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
