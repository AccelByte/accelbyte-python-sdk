import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_screenshots_v2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateScreenshotRequest
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateScreenshotResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateScreenshotRequest
screenshots: List[ModelsUpdateScreenshot]
Definition: List[ModelsUpdateScreenshot]
    description: str
    screenshot_id: str

Example: '{"screenshots": [{"description": "e0BsIpulP24LE2tt", "screenshotId": "RvZvTHflLCrQ2AP8"}, {"description": "2xbpzYOEF22mGhOA", "screenshotId": "VopLQreBACf5jfLn"}, {"description": "v6hxWIJ8REQSzsB2", "screenshotId": "lfpiJISPQP3bNAT5"}]}'
"""

result, error = update_screenshots_v2(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
