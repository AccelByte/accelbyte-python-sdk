import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_bulk_inc_user_stat_item
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

Example: '[{"inc": 0.08733879837856284, "statCode": "cTRAyCjBj5DagzOV", "userId": "1vRdHbj8Z47IZEZV"}, {"inc": 0.553171066074356, "statCode": "Ssws6Xgme55FJOSI", "userId": "pxCsVS2rYX7jAs6i"}, {"inc": 0.35794513702482167, "statCode": "wMG0lmmPcaf6cA8K", "userId": "3hnpsqdRueu3gw9F"}]'
"""

result, error = public_bulk_inc_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
