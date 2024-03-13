import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_upload_content_screenshot
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

Example: '{"screenshots": [{"contentType": "eIp3bp3dRb1WdLnL", "description": "slw3I0I4y29kWHCp", "fileExtension": "png"}, {"contentType": "6BhwlYhzrwkq5xIV", "description": "RHgNKGnb9SlUVsDe", "fileExtension": "png"}, {"contentType": "a52BReTzTGpEHfN7", "description": "6YSZi5iz1wL6z83W", "fileExtension": "jpg"}]}'
"""

result, error = admin_upload_content_screenshot(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
