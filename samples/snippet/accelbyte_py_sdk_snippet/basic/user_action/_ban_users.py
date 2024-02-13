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

Example: '{"actionId": 70, "comment": "ob8N8rQg9RAJQdzA", "userIds": ["NEmnoN7JQGandZZL", "okjYZCrS2Q8VdRqq", "ERYOZTDEhDjyEv0n"]}'
"""

result, error = ban_users(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
