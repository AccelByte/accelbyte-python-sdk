import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_delete_official_content_v2
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_delete_official_content_v2(
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
