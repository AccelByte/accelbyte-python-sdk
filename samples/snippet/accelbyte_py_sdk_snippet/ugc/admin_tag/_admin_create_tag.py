import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_create_tag
from accelbyte_py_sdk.api.ugc.models import ModelsCreateTagRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateTagResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateTagRequest
tag: str

Example: '{"tag": "yMho8ukFLE57toAP"}'
"""

result, error = admin_create_tag(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
