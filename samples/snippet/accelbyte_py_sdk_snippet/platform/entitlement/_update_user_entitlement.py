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

Example: '{"collectionId": "Dp1cpzZZNo2pucUZ", "endDate": "1996-11-29T00:00:00Z", "nullFieldList": ["OjByohA9oYwGwgiV", "oxMb726QRqB9By6J", "btGKEiVUZprpTID3"], "origin": "Epic", "reason": "N0bQo76FlQtN8l5E", "startDate": "1989-08-20T00:00:00Z", "status": "SOLD", "useCount": 91}'
"""

result, error = update_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
