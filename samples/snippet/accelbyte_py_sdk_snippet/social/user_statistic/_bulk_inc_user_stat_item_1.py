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

Example: '[{"inc": 0.08752956022351266, "statCode": "R8JD6HQGBZYx2KDA"}, {"inc": 0.24223403415485079, "statCode": "Mp0MkJhkocoyJIfX"}, {"inc": 0.3245009859573097, "statCode": "uWqhXQWFpdm4tTC6"}]'
"""

result, error = bulk_inc_user_stat_item_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
