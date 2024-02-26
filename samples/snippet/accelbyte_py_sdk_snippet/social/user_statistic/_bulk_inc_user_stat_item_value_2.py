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

Example: '[{"inc": 0.5911543885576974, "statCode": "N8C6mVtANlRkgujz"}, {"inc": 0.1803344602612471, "statCode": "8hVDD9q290ubxpg3"}, {"inc": 0.04859795973192149, "statCode": "uVyxM8AMyg98DCrT"}]'
"""

result, error = bulk_inc_user_stat_item_value_2(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
