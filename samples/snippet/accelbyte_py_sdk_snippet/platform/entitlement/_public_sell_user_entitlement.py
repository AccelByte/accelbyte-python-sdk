import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_sell_user_entitlement
from accelbyte_py_sdk.api.platform.models import EntitlementSoldRequest
from accelbyte_py_sdk.api.platform.models import EntitlementSoldResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity

"""
body:
Definition: EntitlementSoldRequest
request_id: str
use_count: int

Example: '{"requestId": "CweU65qgciw0tPNQ", "useCount": 7}'
"""

result, error = public_sell_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
