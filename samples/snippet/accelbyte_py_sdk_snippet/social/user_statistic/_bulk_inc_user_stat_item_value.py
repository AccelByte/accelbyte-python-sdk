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

Example: '[{"inc": 0.6363519156740748, "statCode": "FzMTRCqoYhdE0I3J", "userId": "MYbpJPwopwvqEcrJ"}, {"inc": 0.15623678262215512, "statCode": "ouTKscyvanh2QgRx", "userId": "mTN7KZ3pEBqTguoA"}, {"inc": 0.795328862356143, "statCode": "e6xfQWN3DjDZedXS", "userId": "luJo4uCVAoOvWZ7G"}]'
"""

result, error = bulk_inc_user_stat_item_value(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
