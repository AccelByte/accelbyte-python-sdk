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

Example: '[{"inc": 0.323814907281918, "statCode": "TiVyZKjnTTkehDL0", "userId": "9qFDBJldum7JiE2G"}, {"inc": 0.0698864165809161, "statCode": "ZBjjMpohfMg2EKey", "userId": "WG7lWPisT7iMild1"}, {"inc": 0.9712607244064566, "statCode": "s3fUxY6aoNliKtVB", "userId": "xUojAvPWX79ceZE7"}]'
"""

result, error = bulk_inc_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
