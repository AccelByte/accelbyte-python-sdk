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

Example: '{"screenshots": [{"contentType": "zGiBtbaj4acIfBSI", "description": "0u02D8AFQaG2eo3z", "fileExtension": "jpg"}, {"contentType": "PJSxTdT10iovF7mJ", "description": "GJFOpdN8iSWtAnYz", "fileExtension": "jpg"}, {"contentType": "oTd8pYatB3MAeDPM", "description": "R34oCSEQDGCaIg6B", "fileExtension": "pjp"}]}'
"""

result, error = admin_upload_content_screenshot_v2(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
