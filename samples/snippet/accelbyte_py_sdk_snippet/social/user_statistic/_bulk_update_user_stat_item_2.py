import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_update_user_stat_item_2
from accelbyte_py_sdk.api.social.models import BulkStatItemUpdate
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemUpdate]
additional_data: Dict[str, Any]
stat_code: str
update_strategy: str
value: float

Example: '[{"additionalData": {"eDf86eiKbyYwz4T5": {}, "fTwjvjnuIXYqBwYl": {}, "J1a104uC1LtpMFda": {}}, "statCode": "Abv89Z8HJp0wiOZJ", "updateStrategy": "MIN", "value": 0.03875000166578224}, {"additionalData": {"fZRKKJuFdBm24VDm": {}, "ir1JxZhaf8iRWpu4": {}, "AeBQqn0VDPSoYOs3": {}}, "statCode": "zHKMD1G2QqJmrYkt", "updateStrategy": "OVERRIDE", "value": 0.09642149049114468}, {"additionalData": {"XeCMqUUUdmpyIlMm": {}, "D53OsWExsTp6wgjC": {}, "vOj3vC2nfcfiXQGy": {}}, "statCode": "xjJrr8zpO1gvgF04", "updateStrategy": "MAX", "value": 0.37757951828452196}]'
"""

result, error = bulk_update_user_stat_item_2(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
