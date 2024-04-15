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

Example: '[{"inc": 0.841215574062498, "statCode": "dBivwOt2W96jUyP2"}, {"inc": 0.26852578786847026, "statCode": "9rDAhQXc7K5oUafH"}, {"inc": 0.7360402759454493, "statCode": "wo13HrFVEjJP1Sge"}]'
"""

result, error = bulk_inc_user_stat_item_value_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
