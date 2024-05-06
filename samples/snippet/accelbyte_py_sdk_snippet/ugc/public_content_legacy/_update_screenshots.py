import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_screenshots
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

Example: '{"screenshots": [{"description": "Atlf8HznBg4VZOmt", "screenshotId": "9fFtUX5ffV9T1w4Q"}, {"description": "CS8WDOwHkbcDuk1S", "screenshotId": "AoX0qfHKQ0fLXd4b"}, {"description": "JO27MIyK7sgg6XNa", "screenshotId": "YqwhmA52Jm0APAi4"}]}'
"""

result, error = update_screenshots(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
