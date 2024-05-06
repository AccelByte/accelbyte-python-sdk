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

Example: '[{"statCode": "EpKhft11nW5ENOVi", "userId": "o5GUfEqzX5NGwolo"}, {"statCode": "JaXeiEq6tm9nFUIU", "userId": "4CrCMiklnnRAjtBX"}, {"statCode": "H0cKFqwfHu1iK3fU", "userId": "WOliNEFvOWtSL4rD"}]'
"""

result, error = bulk_reset_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
