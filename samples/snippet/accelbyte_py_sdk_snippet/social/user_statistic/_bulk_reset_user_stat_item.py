import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_reset_user_stat_item
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import BulkUserStatItemReset
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkUserStatItemReset]
stat_code: str
user_id: str

Example: '[{"statCode": "0WUwFTtQDUHVxRxz", "userId": "KYJBRWi6jt8wLQtG"}, {"statCode": "Kb3AFSehG1DAfocN", "userId": "8zX2B6pOXZk323WA"}, {"statCode": "9lYSQVeIr7rlzyjf", "userId": "Eout6a6wRGJ4EBbU"}]'
"""

result, error = bulk_reset_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
