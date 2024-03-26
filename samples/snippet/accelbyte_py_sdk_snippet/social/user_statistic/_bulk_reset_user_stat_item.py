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

Example: '[{"statCode": "MHIEmZ1MwLuhoxyZ", "userId": "j13h8paNRsxmfmsR"}, {"statCode": "EsWF4K45RT0COgHY", "userId": "Lmvh2XP1iMuFzInS"}, {"statCode": "8LfwZB9sln7O9Xjp", "userId": "uFUNKUv5VbXc4xC0"}]'
"""

result, error = bulk_reset_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
