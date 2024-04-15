import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_screenshots_v2
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

Example: '{"screenshots": [{"description": "RZ3qlu6AYEwhLbsX", "screenshotId": "C1bxmH6DC90GYpGi"}, {"description": "mXfdPlW97MuslXvS", "screenshotId": "tbpr9SoAISwOzSCQ"}, {"description": "nDv13rVbFwqtLi1h", "screenshotId": "waLhVdf5KLXHbzd8"}]}'
"""

result, error = admin_update_screenshots_v2(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
