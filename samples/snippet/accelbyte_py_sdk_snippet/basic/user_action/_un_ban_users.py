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

Example: '{"comment": "V8cclujIofDm4S71", "userIds": ["Ag3z0bN2wIEiEZ2M", "lyFZ6rUWDsfFSveV", "0cH6x8ttKiFQXF2o"]}'
"""

result, error = un_ban_users(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
