import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_bulk_inc_user_stat_item_value
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

Example: '[{"inc": 0.07408623189804009, "statCode": "mJJcvVhDwl5NTrLl", "userId": "2inVZ7IIYS6F7fBl"}, {"inc": 0.9220638952498227, "statCode": "9L14eAsCQWWT6E6Y", "userId": "JMOpGD07ilIFr6V2"}, {"inc": 0.39028466072815216, "statCode": "WQQo5Er9UvpoldKS", "userId": "8k3NmBfPpUBKjBc8"}]'
"""

result, error = public_bulk_inc_user_stat_item_value(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
