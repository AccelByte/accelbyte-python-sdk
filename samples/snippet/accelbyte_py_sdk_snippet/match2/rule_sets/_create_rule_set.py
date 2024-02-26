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

Example: '{"data": {"wiMyeTg9pIMzIcsv": {}, "BqsYLLHC8ntrTAe1": {}, "N2piVNbFX4EKVlI6": {}}, "enable_custom_match_function": false, "name": "eo5fN3m5ydMcGZl3"}'
"""

result, error = create_rule_set(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
