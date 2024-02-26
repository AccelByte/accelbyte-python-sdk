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

Example: '[{"inc": 0.8437163236168358, "statCode": "2QubJFY3emHvwAY5", "userId": "M46bP3VRwlOokhG1"}, {"inc": 0.11645949612760531, "statCode": "0tT4wrGCdhDYKVZ9", "userId": "9MG8Ww6LOkyEzPj7"}, {"inc": 0.3811588203717192, "statCode": "50tS3cA7tbibt0vn", "userId": "2UunR9j17g1BWwLk"}]'
"""

result, error = bulk_inc_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
