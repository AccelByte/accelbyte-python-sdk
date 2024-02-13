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

Example: '{"data": {"9WoFThkcqu6IM4fp": {}, "W4Vepfk0tfr5Wd6W": {}, "UDwEzPl2AThtZiff": {}}, "enable_custom_match_function": false, "name": "KMPhncDEkR4HxIPv"}'
"""

result, error = create_rule_set(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
