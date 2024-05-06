import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_inc_user_stat_item
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

Example: '[{"inc": 0.38239705977000304, "statCode": "2WzQl9Wm04HxIbbf", "userId": "8Z6YS8gO1WX6KM9Z"}, {"inc": 0.257184565172234, "statCode": "pERVJqQUCQB3aKqS", "userId": "23w4dugx9hkyCsBB"}, {"inc": 0.4562854391567426, "statCode": "MWJaeNvp8IGd5IMF", "userId": "DPCrUPRWbiod0ZG6"}]'
"""

result, error = bulk_inc_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
