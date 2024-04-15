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

Example: '{"collectionId": "j0rOa9Qt4YCAMBEx", "endDate": "1992-04-01T00:00:00Z", "nullFieldList": ["P75lBkDOqtxZ70N4", "dDHkUv4rt09WWXVX", "L9Sp7yajX3kMwwoY"], "origin": "System", "reason": "QreJcgypPnYwXRTE", "startDate": "1978-12-24T00:00:00Z", "status": "SOLD", "useCount": 37}'
"""

result, error = update_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
