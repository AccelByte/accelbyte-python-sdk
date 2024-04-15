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

Example: '{"options": ["Cxa3IrlaqHLM75mq", "dgdmFRmgRr7hEcpg", "QJ1XoPMQf652XtW8"], "platform": "hWg31gGkJPCuFS2X", "requestId": "jTDPm2rj7X7lgr37", "useCount": 86}'
"""

result, error = consume_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
