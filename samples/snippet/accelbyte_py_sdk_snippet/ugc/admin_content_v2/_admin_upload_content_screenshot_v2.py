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

Example: '{"screenshots": [{"contentType": "x0lFGhleORk4BaGn", "description": "Ol2SSl5pSL88D4cV", "fileExtension": "pjp"}, {"contentType": "M3TVvEqASqBegOSS", "description": "lRC8tOjIW0KYKJe0", "fileExtension": "jpg"}, {"contentType": "9DBIFE0WGsBIPOJh", "description": "XDxJgtuH2tVqUzHq", "fileExtension": "bmp"}]}'
"""

result, error = admin_upload_content_screenshot_v2(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
