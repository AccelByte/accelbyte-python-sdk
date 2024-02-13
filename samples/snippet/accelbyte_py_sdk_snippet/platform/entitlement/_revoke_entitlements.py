import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import revoke_entitlements
from accelbyte_py_sdk.api.platform.models import BulkEntitlementRevokeResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: List[str]

Example: '["3TIIACOqueVznYbo", "H0KK5tWgoJRBhwMU", "plBMdJy0LIy5mWgl"]'
"""

result, error = revoke_entitlements(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
