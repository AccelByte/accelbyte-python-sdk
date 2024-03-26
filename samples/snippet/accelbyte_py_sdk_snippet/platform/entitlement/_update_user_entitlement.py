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

Example: '{"collectionId": "DqYeOzvnunQ8WQDF", "endDate": "1994-09-18T00:00:00Z", "nullFieldList": ["7xd26jvN9ORG1nEq", "8UmqJw97xSlwOJP6", "gl1qsTWNmiz0xVqj"], "origin": "Playstation", "reason": "tvyc4tc5HpmdlMXl", "startDate": "1982-10-09T00:00:00Z", "status": "REVOKED", "useCount": 20}'
"""

result, error = update_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
