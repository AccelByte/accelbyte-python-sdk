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

Example: '[{"inc": 0.19322935535940644, "statCode": "Kogih6GU0VAOLUZW", "userId": "j14MdGLlW3hyjHWB"}, {"inc": 0.05146347872133683, "statCode": "5Bp0iykIAib9Pmxy", "userId": "UZtEMWdMUZdGiIfB"}, {"inc": 0.5610174026091462, "statCode": "gZxSHnqQpk6oU0ga", "userId": "tv4eUnU06hHBBhpM"}]'
"""

result, error = bulk_inc_user_stat_item_value(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
