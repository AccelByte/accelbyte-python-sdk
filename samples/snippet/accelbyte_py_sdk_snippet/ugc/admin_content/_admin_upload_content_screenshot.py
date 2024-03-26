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

Example: '{"screenshots": [{"contentType": "TcbbUXBAITpSyJEs", "description": "hTDXuWrHZOdyN2FF", "fileExtension": "jpg"}, {"contentType": "kS1fcdwDO2934RDd", "description": "TfJGhFNrLdaaXdlC", "fileExtension": "jfif"}, {"contentType": "W0HkfCaLTxQwiM0l", "description": "YhHYZnFZ7Fp66lmK", "fileExtension": "jpeg"}]}'
"""

result, error = admin_upload_content_screenshot(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
