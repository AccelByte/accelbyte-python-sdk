import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_inc_user_stat_item_value_1
from accelbyte_py_sdk.api.social.models import BulkStatItemInc
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemInc]
inc: float
stat_code: str

Example: '[{"inc": 0.3305046520222572, "statCode": "e2Ak5kuh41sKrGHK"}, {"inc": 0.041610724875140614, "statCode": "hvRcSbTzSYRe4Gxj"}, {"inc": 0.12839322933511876, "statCode": "wEA9ppEfsDmge2Aa"}]'
"""

result, error = bulk_inc_user_stat_item_value_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
