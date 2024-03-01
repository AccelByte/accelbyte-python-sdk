import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import revoke_use_count
from accelbyte_py_sdk.api.platform.models import EntitlementInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import RevokeUseCountRequest

"""
body:
Definition: RevokeUseCountRequest
reason: str
use_count: int

Example: '{"reason": "TNWvhWIssu1gLRfY", "useCount": 37}'
"""

result, error = revoke_use_count(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)