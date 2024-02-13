import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import upload_content_screenshot_v2
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

Example: '{"screenshots": [{"contentType": "btzuQDsSaigfcrf0", "description": "AuHuJyaWvimMLuUH", "fileExtension": "jpg"}, {"contentType": "kHz7vtzQmY7IDAur", "description": "NJkItUWMyXZkHPnW", "fileExtension": "jpeg"}, {"contentType": "KjuottjJmtRg34BO", "description": "BU7ijYgrkEmG5ay7", "fileExtension": "bmp"}]}'
"""

result, error = upload_content_screenshot_v2(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
