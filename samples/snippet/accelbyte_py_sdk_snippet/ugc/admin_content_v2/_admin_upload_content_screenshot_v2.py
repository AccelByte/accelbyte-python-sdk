import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_upload_content_screenshot_v2
from accelbyte_py_sdk.api.ugc.models import ModelsCreateScreenshotRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateScreenshotResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateScreenshotRequest
screenshots: List[ModelsCreateScreenshotRequestItem]
Definition: List[ModelsCreateScreenshotRequestItem]
    content_type: str
    description: str
    file_extension: str

Example: '{"screenshots": [{"contentType": "sKyVYp2yn7reyf0Q", "description": "10TVXoS4z4sCCOFy", "fileExtension": "jpeg"}, {"contentType": "YmmhZmOKuMqMxOV7", "description": "61R07AUgZJYwXIK4", "fileExtension": "jpg"}, {"contentType": "URoUWhKFdxedF2Br", "description": "T7mGeOiR9e48bqLm", "fileExtension": "bmp"}]}'
"""

result, error = admin_upload_content_screenshot_v2(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
