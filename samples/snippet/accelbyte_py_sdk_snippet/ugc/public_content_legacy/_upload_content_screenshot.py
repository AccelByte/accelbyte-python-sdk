import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import upload_content_screenshot
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

Example: '{"screenshots": [{"contentType": "PhSnFpu0UZPSfKft", "description": "JpVkG4Wgx4PmVHms", "fileExtension": "png"}, {"contentType": "8fu1ixGEE1dfi0FB", "description": "LD6ZqsIibUkI3RoY", "fileExtension": "png"}, {"contentType": "lKVFn26g292ZDb1H", "description": "lTwrELlzCSxt4f2d", "fileExtension": "jpg"}]}'
"""

result, error = upload_content_screenshot(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
