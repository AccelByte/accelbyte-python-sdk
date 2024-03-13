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

Example: '{"screenshots": [{"contentType": "1S7SuL4ky8rDkMMz", "description": "y69ad5oD3qAarj7I", "fileExtension": "png"}, {"contentType": "JkytAfAKPOnmWlJb", "description": "HXMVjkB17VbajQXQ", "fileExtension": "jpg"}, {"contentType": "2gIzrsA7H7S13fCd", "description": "KeSAxw1Vs5haPbQ0", "fileExtension": "jpg"}]}'
"""

result, error = upload_content_screenshot(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
