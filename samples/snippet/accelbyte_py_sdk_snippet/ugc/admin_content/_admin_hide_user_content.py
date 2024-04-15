import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_hide_user_content
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ModelsHideContentRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsHideContentRequest
is_hidden: bool

Example: '{"isHidden": true}'
"""

result, error = admin_hide_user_content(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
