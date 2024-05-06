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

Example: '{"options": ["lkpjggi8mInL0cnn", "gpQN9JuoLJeaegIX", "Efx0PsKo4UohOFGr"], "requestId": "KcoJhNugDmKTAG4v", "useCount": 89}'
"""

result, error = public_consume_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
