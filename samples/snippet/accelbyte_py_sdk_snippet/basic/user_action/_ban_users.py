import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import ban_users
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserBanRequest
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UserBanRequest
action_id: int
comment: str
user_ids: List[str]

Example: '{"actionId": 29, "comment": "sbI3N4UYDHAoKJD7", "userIds": ["8Rw4VzmXy5Gf5Rjm", "tZDoZs0c1xTZuUJ1", "6nTTKgz5hlwINObX"]}'
"""

result, error = ban_users(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
