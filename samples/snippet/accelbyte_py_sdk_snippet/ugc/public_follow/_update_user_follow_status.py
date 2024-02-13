import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_user_follow_status
from accelbyte_py_sdk.api.ugc.models import ModelsUserFollowRequest
from accelbyte_py_sdk.api.ugc.models import ModelsUserFollowResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUserFollowRequest
follow_status: bool

Example: '{"followStatus": false}'
"""

result, error = update_user_follow_status(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
