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

Example: '[{"inc": 0.7588859598948103, "statCode": "9lhxBvZumbszEV2h", "userId": "9JlNT3rXgLgP0Bt0"}, {"inc": 0.5481675512408007, "statCode": "3q6Z0kZX2qggUwYF", "userId": "UBSKJG9zQqqwmVpd"}, {"inc": 0.06495115664169171, "statCode": "H8QfyPB1qI7nMFb0", "userId": "hjI2aSNLjTk8zJbS"}]'
"""

result, error = bulk_inc_user_stat_item_value(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
