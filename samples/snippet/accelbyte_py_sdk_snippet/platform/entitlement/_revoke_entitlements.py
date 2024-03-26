import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import revoke_entitlements
from accelbyte_py_sdk.api.platform.models import BulkEntitlementRevokeResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: List[str]

Example: '["sbOX9jVYptPQbVdK", "Qxx9W85SZeJf19wf", "yhDHTeQf6Nhpwgqf"]'
"""

result, error = revoke_entitlements(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
