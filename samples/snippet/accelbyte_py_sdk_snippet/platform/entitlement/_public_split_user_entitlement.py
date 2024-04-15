import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_split_user_entitlement
from accelbyte_py_sdk.api.platform.models import EntitlementSplitRequest
from accelbyte_py_sdk.api.platform.models import EntitlementSplitResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity

"""
body:
Definition: EntitlementSplitRequest
use_count: int

Example: '{"useCount": 6}'
"""

result, error = public_split_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
