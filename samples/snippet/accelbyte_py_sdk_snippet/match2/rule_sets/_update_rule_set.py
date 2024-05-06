import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import update_rule_set
from accelbyte_py_sdk.api.match2.models import ApiRuleSetPayload
from accelbyte_py_sdk.api.match2.models import ResponseError

"""
body:
Definition: ApiRuleSetPayload
data: Dict[str, Any]
enable_custom_match_function: bool
name: str

Example: '{"data": {"GcsFTj3MRdCpVav9": {}, "3mWMIrS52l56Fted": {}, "Tg6NoGmOn8QPTkN6": {}}, "enable_custom_match_function": false, "name": "L6a9PXiTLlvzmoNu"}'
"""

result, error = update_rule_set(
    body=body,
    ruleset=ruleset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
