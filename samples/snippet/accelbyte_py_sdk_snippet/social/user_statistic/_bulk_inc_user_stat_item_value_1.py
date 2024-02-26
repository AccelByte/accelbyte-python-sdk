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

Example: '[{"inc": 0.3473209781840656, "statCode": "T2g4oQt7n60vuJtg"}, {"inc": 0.4713828290963312, "statCode": "gRdCHxD9g7CWMeKK"}, {"inc": 0.19208318348950815, "statCode": "eyM5Onq8DKwnpxt4"}]'
"""

result, error = bulk_inc_user_stat_item_value_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
