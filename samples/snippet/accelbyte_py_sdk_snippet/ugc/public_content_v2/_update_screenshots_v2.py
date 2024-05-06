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

Example: '{"screenshots": [{"description": "JCAQSXPOFs2xdrG1", "screenshotId": "QdpJNsQIS1Vcpb9b"}, {"description": "pSFzQaTzC6x9347s", "screenshotId": "RWr1lNISIFp7ypI6"}, {"description": "pfsQ2B9V9vQ5dRzR", "screenshotId": "4yqxu6yeN9iDFaEI"}]}'
"""

result, error = update_screenshots_v2(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
