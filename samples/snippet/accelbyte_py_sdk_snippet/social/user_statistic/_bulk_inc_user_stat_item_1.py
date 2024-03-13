import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_inc_user_stat_item_1
from accelbyte_py_sdk.api.social.models import BulkStatItemInc
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemInc]
inc: float
stat_code: str

Example: '[{"inc": 0.06384676066754913, "statCode": "fa2ykbW0PWtoVXyv"}, {"inc": 0.14669746204929934, "statCode": "lZVntwLP3uNAbffl"}, {"inc": 0.34835107255983044, "statCode": "JCYMRkuV4gP8zNDj"}]'
"""

result, error = bulk_inc_user_stat_item_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
