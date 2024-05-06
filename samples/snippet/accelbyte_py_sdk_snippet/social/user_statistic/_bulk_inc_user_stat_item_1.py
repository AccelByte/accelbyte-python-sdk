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

Example: '[{"inc": 0.6887890182946954, "statCode": "LjgOCnJJJWkJZiV7"}, {"inc": 0.4635157743809537, "statCode": "O7aeuHe1xz89rFDq"}, {"inc": 0.7041100827875276, "statCode": "bRV8xzQEQwDbU4V9"}]'
"""

result, error = bulk_inc_user_stat_item_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
