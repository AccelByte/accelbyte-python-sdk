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

Example: '[{"inc": 0.0962554616505179, "statCode": "iOScmE9Pau5vwz4x", "userId": "eVn3jCkpPA6knzWa"}, {"inc": 0.33693763417231337, "statCode": "sfFXMabaZjkwbfX9", "userId": "UrXjkN4pQ7ncf6mY"}, {"inc": 0.520431124593404, "statCode": "6BK5VppcZ5JChnnx", "userId": "qRx6vsLovp4C5XD2"}]'
"""

result, error = bulk_inc_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
