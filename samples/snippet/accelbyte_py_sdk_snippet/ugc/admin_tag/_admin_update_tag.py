import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_tag
from accelbyte_py_sdk.api.ugc.models import ModelsCreateTagRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateTagResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateTagRequest
tag: str

Example: '{"tag": "ftLLhSFjaN0ZqxCa"}'
"""

result, error = admin_update_tag(
    body=body,
    tag_id=tag_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
