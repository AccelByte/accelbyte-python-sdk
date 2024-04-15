import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_inc_user_stat_item_value
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import BulkUserStatItemInc
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkUserStatItemInc]
inc: float
stat_code: str
user_id: str

Example: '[{"inc": 0.1899619785132738, "statCode": "0ghQHWF1euqGphJ5", "userId": "5Y8Zj8B369VLQOla"}, {"inc": 0.7427412113675282, "statCode": "LZC6pHTKh39rHeaw", "userId": "u7L2kK7vFbTLyJ1X"}, {"inc": 0.5836917791024964, "statCode": "3oW6RURBYLUAWxLt", "userId": "CQNrWWgxBE0OrAFE"}]'
"""

result, error = bulk_inc_user_stat_item_value(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
