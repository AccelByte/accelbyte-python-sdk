import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_content_like_status_v2
from accelbyte_py_sdk.api.ugc.models import ModelsContentLikeRequest
from accelbyte_py_sdk.api.ugc.models import ModelsContentLikeResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsContentLikeRequest
like_status: bool

Example: '{"likeStatus": true}'
"""

result, error = update_content_like_status_v2(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
