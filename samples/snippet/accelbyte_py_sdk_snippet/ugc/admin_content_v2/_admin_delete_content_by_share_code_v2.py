import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_delete_content_by_share_code_v2
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_delete_content_by_share_code_v2(
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
