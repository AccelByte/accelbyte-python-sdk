import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_user_entitlement
from accelbyte_py_sdk.api.platform.models import EntitlementInfo
from accelbyte_py_sdk.api.platform.models import EntitlementUpdate
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: EntitlementUpdate
collection_id: str
end_date: str
null_field_list: List[str]
origin: str
reason: str
start_date: str
status: str
use_count: int

Example: '{"collectionId": "sqBtgOikeF1TwBrg", "endDate": "1994-03-18T00:00:00Z", "nullFieldList": ["7naMDsTq6loPhO6X", "wD9RncXLC2wlLU2D", "043WsQFJ8WKQ1pGx"], "origin": "Other", "reason": "1wVfPMygYRbZgsQI", "startDate": "1974-04-02T00:00:00Z", "status": "REVOKED", "useCount": 82}'
"""

result, error = update_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
