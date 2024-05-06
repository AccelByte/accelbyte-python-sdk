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

Example: '{"screenshots": [{"description": "rTu22vbi0ZvPVgng", "screenshotId": "8Vw4a5u6khGlKU88"}, {"description": "QtXXQCkSSLwd1c7G", "screenshotId": "tc1msBcMJe3F6GDR"}, {"description": "waDFrSdEOhhCHg1g", "screenshotId": "AXFJoRCQDnfQPCIg"}]}'
"""

result, error = admin_update_screenshots(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
