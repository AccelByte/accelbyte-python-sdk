import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_bulk_inc_user_stat_item
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

Example: '[{"inc": 0.0719873943771111, "statCode": "uk4JfLgfyOMTPCZD", "userId": "9IDARWjmyvvtIIfI"}, {"inc": 0.7060780324172057, "statCode": "vMZ0jMkDeiZ4zG6g", "userId": "u1iBXCu92zmpT7vB"}, {"inc": 0.22531620461692048, "statCode": "qtZCPvmD5d5I3FGa", "userId": "J3OV1jeNQLvmlwgx"}]'
"""

result, error = public_bulk_inc_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
