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

Example: '{"screenshots": [{"contentType": "9K6wxr3dkgMq7mLu", "description": "eOOrlizN9EWdDiNv", "fileExtension": "png"}, {"contentType": "UCNF8BbTrfEuvE9Y", "description": "uW0j1QPxrOHGYL2v", "fileExtension": "pjp"}, {"contentType": "7fgIgMY3eu4MhBRh", "description": "93Chy8FGVIexL4us", "fileExtension": "png"}]}'
"""

result, error = admin_upload_content_screenshot(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
