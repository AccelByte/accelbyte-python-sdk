import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_screenshots
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

Example: '{"screenshots": [{"description": "hvxOznGxCXhCbP29", "screenshotId": "K7qImA4zIt7AHlUP"}, {"description": "qiixa9HSCSRbhoig", "screenshotId": "CzRzv5Yq5pPRzSoi"}, {"description": "24kiZnGoWUcbKtUJ", "screenshotId": "Ii1Zhye2xpJlSiMK"}]}'
"""

result, error = admin_update_screenshots(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
