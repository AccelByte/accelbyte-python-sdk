import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import un_ban_users
from accelbyte_py_sdk.api.basic.models import ADTOForUnbanUserAPICall
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: ADTOForUnbanUserAPICall
comment: str
user_ids: List[str]

Example: '{"comment": "fj7yZ3rny6CK1z80", "userIds": ["SD0c0yxPvR7YrFrx", "LN86s38OQScn7BA6", "QXeFgXUHcO5QNq4M"]}'
"""

result, error = un_ban_users(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
