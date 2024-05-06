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

Example: '[{"inc": 0.916993528030057, "statCode": "SYUkuAhMChofwHHS", "userId": "sb57YSyXPG2UiX6k"}, {"inc": 0.7053645970709671, "statCode": "Oy4E4JGNAiShvwFy", "userId": "eAvakJlgD7dirQrU"}, {"inc": 0.4675699492306201, "statCode": "PJ7T1bz9kRTDXO6v", "userId": "CnX4bSFU6ar8gQwg"}]'
"""

result, error = public_bulk_inc_user_stat_item_value(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
