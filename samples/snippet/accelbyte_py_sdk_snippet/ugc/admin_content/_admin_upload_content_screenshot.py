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

Example: '{"screenshots": [{"contentType": "1A2VYHp0bECOsGk9", "description": "NjrZZWpKWreYvRsj", "fileExtension": "jfif"}, {"contentType": "r1JXc0kn52hUuv7O", "description": "Kql4VuQqTVHwGER3", "fileExtension": "jfif"}, {"contentType": "6X0NqKYGmRLHHmTP", "description": "0tebVMQyvpsPQLLM", "fileExtension": "png"}]}'
"""

result, error = admin_upload_content_screenshot(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
