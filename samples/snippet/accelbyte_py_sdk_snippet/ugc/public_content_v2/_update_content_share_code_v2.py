import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_content_share_code_v2
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentShareCodeRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateContentShareCodeRequest
share_code: str

Example: '{"shareCode": "tDZYE9fBzNxCsBJW"}'
"""

result, error = update_content_share_code_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
