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

Example: '{"screenshots": [{"description": "5ccOUcVwXmCUYcmc", "screenshotId": "E5AAjZRc5lpp25Xv"}, {"description": "jtT36pu1LAnsYlg7", "screenshotId": "egT5k9eA9xXROLPi"}, {"description": "DJqalrXiAN7grgtB", "screenshotId": "7iupFYpDrTuA5yqY"}]}'
"""

result, error = update_screenshots(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
