import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_consume_user_entitlement
from accelbyte_py_sdk.api.platform.models import EntitlementDecrement
from accelbyte_py_sdk.api.platform.models import EntitlementDecrementResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity

"""
body:
Definition: EntitlementDecrement
options: List[str]
request_id: str
use_count: int

Example: '{"options": ["Wipxn2H5iq87Pih9", "4qay6O1fw2jruGFa", "OCR2OYk35ISP3lI3"], "requestId": "FoDRT5tmmuNPEyjO", "useCount": 60}'
"""

result, error = public_consume_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
