import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import delete_content_screenshot_v2
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = delete_content_screenshot_v2(
    content_id=content_id,
    screenshot_id=screenshot_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
