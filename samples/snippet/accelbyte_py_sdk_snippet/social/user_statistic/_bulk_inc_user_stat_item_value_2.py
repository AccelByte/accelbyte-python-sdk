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

Example: '[{"inc": 0.3413798917597114, "statCode": "1CszJPnJsKRIzdHJ"}, {"inc": 0.6712597540511076, "statCode": "lnqXEGGK3fy7E5O1"}, {"inc": 0.9737207775014753, "statCode": "o06tP62uIeSqIPYM"}]'
"""

result, error = bulk_inc_user_stat_item_value_2(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
