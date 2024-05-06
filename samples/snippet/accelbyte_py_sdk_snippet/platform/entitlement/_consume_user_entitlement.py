import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import consume_user_entitlement
from accelbyte_py_sdk.api.platform.models import AdminEntitlementDecrement
from accelbyte_py_sdk.api.platform.models import EntitlementDecrementResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity

"""
body:
Definition: AdminEntitlementDecrement
options: List[str]
platform: str
request_id: str
use_count: int

Example: '{"options": ["G7AYGd1oqX4fEWgO", "t65vvlD9wQSihhgj", "LPdwWTfvEtjn4jVW"], "platform": "Fnxg4S9Yt1wfwyo2", "requestId": "WG4RW7cI5IckLX9a", "useCount": 91}'
"""

result, error = consume_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
