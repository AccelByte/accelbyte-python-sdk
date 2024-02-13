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

Example: '{"screenshots": [{"description": "vAJx5k5KCQeFf1a6", "screenshotId": "uIMo88EMuc1w2uau"}, {"description": "2sshj0Y1KKlKp988", "screenshotId": "h5c12SaIoFbhRtch"}, {"description": "9CXF8sgeUxhpXlbK", "screenshotId": "CnlbhYt6ypdYPgBX"}]}'
"""

result, error = admin_update_screenshots(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
