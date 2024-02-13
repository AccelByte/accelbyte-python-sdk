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

Example: '{"collectionId": "TiuVdme5x2mBIYBc", "endDate": "1998-04-07T00:00:00Z", "nullFieldList": ["GfZuZ8G30mYNOvPI", "TNb0TMC5YmxwL7LA", "vISPU5NDb9vZ0Q37"], "origin": "Playstation", "reason": "7X0jhlAOqAEw8sWY", "startDate": "1977-10-19T00:00:00Z", "status": "INACTIVE", "useCount": 9}'
"""

result, error = update_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
