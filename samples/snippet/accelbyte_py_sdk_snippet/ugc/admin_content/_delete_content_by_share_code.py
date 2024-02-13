import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import delete_content_by_share_code
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = delete_content_by_share_code(
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
