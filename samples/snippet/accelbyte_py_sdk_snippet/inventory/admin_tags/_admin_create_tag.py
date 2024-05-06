import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_create_tag
from accelbyte_py_sdk.api.inventory.models import ApimodelsCreateTagReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsCreateTagResp
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse

"""
body:
Definition: ApimodelsCreateTagReq
name: str
owner: str

Example: '{"name": "F6g8RXNgzWd4EEiw", "owner": "CLIENT"}'
"""

result, error = admin_create_tag(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
