import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sell_user_entitlement
from accelbyte_py_sdk.api.platform.models import AdminEntitlementSoldRequest
from accelbyte_py_sdk.api.platform.models import EntitlementSoldResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity

"""
body:
Definition: AdminEntitlementSoldRequest
platform: str
request_id: str
use_count: int

Example: '{"platform": "rCyWcV8Klhtzpgq7", "requestId": "z9d9Xdb578e0UvIr", "useCount": 50}'
"""

result, error = sell_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
