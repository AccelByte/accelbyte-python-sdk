import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_post_tag_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError
from accelbyte_py_sdk.api.cloudsave.models import ModelsTagRequest

"""
body:
Definition: ModelsTagRequest
tag: str

Example: '{"tag": "NnRmJo2aRlIahIdr"}'
"""

result, error = admin_post_tag_handler_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
