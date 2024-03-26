import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_inc_user_stat_item_value
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

Example: '[{"inc": 0.9591365214703247, "statCode": "ZaoYsub8yiaL9WgQ", "userId": "qFtV42H7Lsm2dmnt"}, {"inc": 0.6334609298071806, "statCode": "DrzboEmCqvsxNYJs", "userId": "XEm8Do7HupHG2hvo"}, {"inc": 0.7792153806670687, "statCode": "0DG29XUbOP8PoJUE", "userId": "v4yhjEeI4V0eB0cQ"}]'
"""

result, error = bulk_inc_user_stat_item_value(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
