import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_inc_user_stat_item_value_2
from accelbyte_py_sdk.api.social.models import BulkStatItemInc
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemInc]
inc: float
stat_code: str

Example: '[{"inc": 0.3514973945275174, "statCode": "F2oVwhSaHlwYlT0G"}, {"inc": 0.46796761861939606, "statCode": "JD8AjccXBQAM6MvQ"}, {"inc": 0.6593197175623354, "statCode": "MxPXPxjqh5JOyvEq"}]'
"""

result, error = bulk_inc_user_stat_item_value_2(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
