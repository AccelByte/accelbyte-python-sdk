import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_reset_user_stat_item_1
from accelbyte_py_sdk.api.social.models import BulkStatItemReset
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemReset]
stat_code: str

Example: '[{"statCode": "9w5l2dcs8TCUt2Ve"}, {"statCode": "1PZe0z3u4CW88PBN"}, {"statCode": "os6MUPLcny4OmfYQ"}]'
"""

result, error = bulk_reset_user_stat_item_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
