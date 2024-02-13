import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_content_share_code
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentShareCodeRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateContentShareCodeRequest
share_code: str

Example: '{"shareCode": "sLtsOI6Bza2oiSsZ"}'
"""

result, error = update_content_share_code(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
