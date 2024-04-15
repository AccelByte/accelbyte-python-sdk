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

Example: '[{"inc": 0.3466285962353026, "statCode": "4ZRcIr6jT3cYUDag"}, {"inc": 0.2911095346147503, "statCode": "usPzu6XsqMLc5obx"}, {"inc": 0.47799961540805047, "statCode": "MkO29s2jKPo9R8uF"}]'
"""

result, error = bulk_inc_user_stat_item_value_2(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
