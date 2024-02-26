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

Example: '{"data": {"iCpcKz4YySoB8OW7": {}, "WJ8OvodyNhLM77Qq": {}, "f20agtrOk5dMWoyR": {}}, "enable_custom_match_function": false, "name": "dfvo91RCQEOqQHa0"}'
"""

result, error = update_rule_set(
    body=body,
    ruleset=ruleset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
