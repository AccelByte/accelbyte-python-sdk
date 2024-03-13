import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_reset_user_stat_item_2
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import BulkUserStatItemReset
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkUserStatItemReset]
stat_code: str
user_id: str

Example: '[{"statCode": "6SVXzvbjqlbsrMtq", "userId": "pLvedkWmLKBlqrNk"}, {"statCode": "qjDflvg1eUx8yBKR", "userId": "zgJSgTA4FRqcmqrf"}, {"statCode": "6vejUeKJ3WIs3XSj", "userId": "4s7MtbhptHicYgcF"}]'
"""

result, error = bulk_reset_user_stat_item_2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
