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

Example: '{"comment": "2rsnSKBHfyeo3uQ8", "userIds": ["23TYglpErcslMn59", "b0sjLukF848NHKKT", "cQC5uIz6T8Mate5V"]}'
"""

result, error = un_ban_users(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
