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

Example: '{"screenshots": [{"description": "WCT1lGtGb7iW2jqk", "screenshotId": "4nqJb47pBH7wVswz"}, {"description": "dq19QcugWlochGyv", "screenshotId": "dhzUED1eolo16Ke9"}, {"description": "2ppChkUvmiGbgljv", "screenshotId": "qmm78bLTqJetzxBL"}]}'
"""

result, error = update_screenshots(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
