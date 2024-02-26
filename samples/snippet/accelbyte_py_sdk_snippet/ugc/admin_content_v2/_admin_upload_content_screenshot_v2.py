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

Example: '{"screenshots": [{"contentType": "vJFzzAhEeH12APki", "description": "8fb55CLyI2pnpFBd", "fileExtension": "jfif"}, {"contentType": "CPCCFoDIUlI4rZEI", "description": "J86tfNXh5puR05gg", "fileExtension": "jpg"}, {"contentType": "BUx6z3FLjYZVsNeb", "description": "6Fd1PL4D49lKqdLi", "fileExtension": "jpg"}]}'
"""

result, error = admin_upload_content_screenshot_v2(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
