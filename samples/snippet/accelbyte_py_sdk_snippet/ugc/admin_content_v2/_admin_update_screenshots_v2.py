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

Example: '{"screenshots": [{"description": "8M2h6Wa1wwF8Hsvd", "screenshotId": "9XVezgqifAibe7od"}, {"description": "MDEZewESwt6sCxFf", "screenshotId": "ylFdHN3Ddj2akmFk"}, {"description": "LfOZzWl9NnO0LDWZ", "screenshotId": "W7cK7FFhrK0yPa7q"}]}'
"""

result, error = admin_update_screenshots_v2(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
