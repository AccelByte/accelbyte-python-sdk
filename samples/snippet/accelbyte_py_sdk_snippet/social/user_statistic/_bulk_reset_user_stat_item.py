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

Example: '[{"statCode": "nVLcYbOGzFTCcc36", "userId": "chdHAImrvsW3OeG0"}, {"statCode": "SezqGWxj8FBdanNy", "userId": "Faz9OcAElOGcjzdh"}, {"statCode": "KergnJ4wBp34iClp", "userId": "d5A1WoojJUBjkXKq"}]'
"""

result, error = bulk_reset_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
