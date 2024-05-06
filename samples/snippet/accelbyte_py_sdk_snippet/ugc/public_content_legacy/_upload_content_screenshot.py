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

Example: '{"screenshots": [{"contentType": "fUV606xQT5yaorOd", "description": "zqDlL7idUnRqKt8O", "fileExtension": "png"}, {"contentType": "ihfSSlZE9uk8lMri", "description": "DAmEstAPLLgQeCbE", "fileExtension": "jpeg"}, {"contentType": "XimUICZA26azXIc7", "description": "639linEQZMmOPKr8", "fileExtension": "jpeg"}]}'
"""

result, error = upload_content_screenshot(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
