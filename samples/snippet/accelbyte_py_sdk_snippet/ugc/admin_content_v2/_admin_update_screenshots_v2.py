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

Example: '{"screenshots": [{"description": "Tx63ZGs7fjBZX7f4", "screenshotId": "dGx15yheraf3JqKk"}, {"description": "vFWtTz0Y0453GciZ", "screenshotId": "fjyocCMBWwrPKsGk"}, {"description": "ArBfqiOwKtffzC9c", "screenshotId": "g3bcbjG5CdbtBWAM"}]}'
"""

result, error = admin_update_screenshots_v2(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
