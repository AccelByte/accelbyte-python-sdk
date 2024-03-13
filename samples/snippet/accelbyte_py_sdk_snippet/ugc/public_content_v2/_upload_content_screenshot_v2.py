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

Example: '{"screenshots": [{"contentType": "IdLD4s0lAr1eUaNQ", "description": "d7LeLvNn6cyDxSc1", "fileExtension": "jpeg"}, {"contentType": "B4h2Wh4EWsNyJ83U", "description": "8FmLFXY5IhOkaT2c", "fileExtension": "jpeg"}, {"contentType": "prBYm56NYrKT21Mz", "description": "vHa2SkxnXZtQbDSx", "fileExtension": "bmp"}]}'
"""

result, error = upload_content_screenshot_v2(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
