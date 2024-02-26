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

Example: '{"screenshots": [{"contentType": "txzKFsWuG4Jkf1KT", "description": "RT5uAeTTgJorXlwk", "fileExtension": "png"}, {"contentType": "iE8Uov1KjCREJ34t", "description": "1sH7wr5WFeRkc3Ge", "fileExtension": "bmp"}, {"contentType": "r2SfsqWnnUOKckF6", "description": "yDNCJDEYZxtdryJe", "fileExtension": "bmp"}]}'
"""

result, error = upload_content_screenshot_v2(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
