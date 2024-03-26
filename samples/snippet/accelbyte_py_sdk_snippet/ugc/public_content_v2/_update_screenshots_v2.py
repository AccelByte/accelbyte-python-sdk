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

Example: '{"screenshots": [{"description": "pxwrVTMOtcwFxrDs", "screenshotId": "jlCcWNLMTxySxk8z"}, {"description": "N04lwSL0S2E9ZGON", "screenshotId": "FseMeOvfAua5V2aJ"}, {"description": "mXa2QWVnN3nKwQkg", "screenshotId": "cZK6XQG5k8RKfu9Z"}]}'
"""

result, error = update_screenshots_v2(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
