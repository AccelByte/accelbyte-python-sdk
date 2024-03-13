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

Example: '{"screenshots": [{"contentType": "DjNHTkyBsqbmvgPC", "description": "UJ9fWaeGjrH1LGy9", "fileExtension": "jfif"}, {"contentType": "J29SDc3XPPAs5012", "description": "WlJWjzTzn4yvT5Cz", "fileExtension": "pjp"}, {"contentType": "AZZVBM3bOyC2xcDa", "description": "N33VPD6vZ5sQhWNM", "fileExtension": "jpg"}]}'
"""

result, error = admin_upload_content_screenshot_v2(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
