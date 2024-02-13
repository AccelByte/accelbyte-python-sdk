import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_bulk_inc_user_stat_item_1
from accelbyte_py_sdk.api.social.models import BulkStatItemInc
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemInc]
inc: float
stat_code: str

Example: '[{"inc": 0.7319670009215219, "statCode": "vMkD4Ol8OG1BeS5I"}, {"inc": 0.4520764061149324, "statCode": "wXNAmNNAiQvRnKue"}, {"inc": 0.2842568494187808, "statCode": "cgSkHmFiuNRQoXuB"}]'
"""

result, error = public_bulk_inc_user_stat_item_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
