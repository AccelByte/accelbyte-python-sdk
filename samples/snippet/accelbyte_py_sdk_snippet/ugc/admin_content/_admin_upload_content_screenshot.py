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

Example: '{"screenshots": [{"contentType": "tjYoFfgU1gc253T4", "description": "Qdg9L8digTH3M7tx", "fileExtension": "jpg"}, {"contentType": "3UZyPqG4ujUiKCdx", "description": "T5XXr29H7zsL3NpW", "fileExtension": "png"}, {"contentType": "AiPRnGvqHoygiJVd", "description": "pFxM5RWJLzPdmdWW", "fileExtension": "jpg"}]}'
"""

result, error = admin_upload_content_screenshot(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
