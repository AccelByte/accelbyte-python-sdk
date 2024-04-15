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

Example: '{"screenshots": [{"contentType": "SJwDfcHZy0I9NJPI", "description": "e6YU78GZzo934V64", "fileExtension": "jpg"}, {"contentType": "Xt1AudtmCGbAhvCF", "description": "nio66nfyp4u0Rupy", "fileExtension": "png"}, {"contentType": "5RJ9NsIYBOmxwSTc", "description": "3VudNKueKmZig5Bn", "fileExtension": "png"}]}'
"""

result, error = upload_content_screenshot(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
