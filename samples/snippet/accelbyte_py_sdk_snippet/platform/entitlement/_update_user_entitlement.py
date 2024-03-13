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

Example: '{"collectionId": "MW4IK5HCtp0emsWk", "endDate": "1986-09-29T00:00:00Z", "nullFieldList": ["4tKXI2A7qRXxVw9Q", "4ABcw9KSFk1Hh2Yv", "9qaLRoNQ9VB4OPGf"], "origin": "Twitch", "reason": "uqtqTNR9CSr91B0I", "startDate": "1987-07-12T00:00:00Z", "status": "REVOKED", "useCount": 21}'
"""

result, error = update_user_entitlement(
    entitlement_id=entitlement_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
