import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_create_item_type
from accelbyte_py_sdk.api.inventory.models import ApimodelsCreateItemTypeReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsCreateItemTypeResp
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse

"""
body:
Definition: ApimodelsCreateItemTypeReq
name: str

Example: '{"name": "R7amsExjwTzRCZiq"}'
"""

result, error = admin_create_item_type(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
