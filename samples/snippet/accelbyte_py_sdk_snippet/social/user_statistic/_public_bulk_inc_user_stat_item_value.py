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

Example: '[{"inc": 0.32081380684546723, "statCode": "lmI9rKF72Vfm0FGQ", "userId": "uvS5MGe6WPBzNajn"}, {"inc": 0.6779731699115152, "statCode": "wSYk9dx9bNqTdL89", "userId": "yaeISc5zbgnQlS1t"}, {"inc": 0.05121055492567461, "statCode": "4OioWuJNOIacPuGb", "userId": "nGVyCxteepixKiUP"}]'
"""

result, error = public_bulk_inc_user_stat_item_value(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
