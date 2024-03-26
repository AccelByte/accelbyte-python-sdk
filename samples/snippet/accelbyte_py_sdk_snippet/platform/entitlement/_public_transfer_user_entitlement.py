import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_transfer_user_entitlement
from accelbyte_py_sdk.api.platform.models import EntitlementTransferRequest
from accelbyte_py_sdk.api.platform.models import EntitlementTransferResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity

"""
body:
Definition: EntitlementTransferRequest
entitlement_id: str
use_count: int

Example: '{"entitlementId": "ijMw59gFTsQvEmnc", "useCount": 87}'
"""

result, error = public_transfer_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
