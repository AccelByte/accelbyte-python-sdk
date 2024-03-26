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

Example: '[{"inc": 0.2292306433812611, "statCode": "7udX5TTLgbpCK7LU"}, {"inc": 0.06794500602324371, "statCode": "nax4MPUlvWsjuCcu"}, {"inc": 0.5739438574723047, "statCode": "FrkSZUkLXVIUTI9L"}]'
"""

result, error = bulk_inc_user_stat_item_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
