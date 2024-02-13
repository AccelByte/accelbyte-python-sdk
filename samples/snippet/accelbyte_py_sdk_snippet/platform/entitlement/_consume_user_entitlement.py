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

Example: '{"options": ["gXD9I4F5QugxMw0T", "UtcJCbuqrjjJh6by", "735nf6CxJtkCWOtn"], "platform": "TYudPpBhbOgolclB", "requestId": "Eljbs3Vg6NcohCCj", "useCount": 76}'
"""

result, error = consume_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
