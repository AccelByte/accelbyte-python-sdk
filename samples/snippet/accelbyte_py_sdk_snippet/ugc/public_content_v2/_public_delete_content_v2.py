import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_delete_content_v2
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = public_delete_content_v2(
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
