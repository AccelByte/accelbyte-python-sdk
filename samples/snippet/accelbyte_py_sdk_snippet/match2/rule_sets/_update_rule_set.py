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

Example: '{"data": {"UnzTMc6U3oL3Wi7g": {}, "s9x0gVbfIyGDVZfa": {}, "2Yc8up1SWLe0JzdF": {}}, "enable_custom_match_function": true, "name": "GiKqS3Ry961Z6DIB"}'
"""

result, error = update_rule_set(
    body=body,
    ruleset=ruleset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
