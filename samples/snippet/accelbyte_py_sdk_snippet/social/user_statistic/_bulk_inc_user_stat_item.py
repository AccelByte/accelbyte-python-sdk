import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_inc_user_stat_item
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

Example: '[{"inc": 0.3167548084865167, "statCode": "IhiZsWrZrMqfm3hF", "userId": "b6j0MWo9ZC9DOMXc"}, {"inc": 0.5094092319286403, "statCode": "3Vx8GhwEad6cY8mD", "userId": "gpLIfiF8Sm9xShxW"}, {"inc": 0.9015849950515081, "statCode": "Cp5UP22WnCu2OfU6", "userId": "ENOFwSYmzxy88EsY"}]'
"""

result, error = bulk_inc_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
