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

Example: '{"screenshots": [{"contentType": "kyEGAoCeEI90I9IM", "description": "I3Gzd47fz7BTONd2", "fileExtension": "pjp"}, {"contentType": "n7ftaJ4DZGKWalif", "description": "72lDwTGHXQWpknOi", "fileExtension": "pjp"}, {"contentType": "B6Tn7MQBj8dZKGvA", "description": "C2bD3e2RFdB5H75V", "fileExtension": "pjp"}]}'
"""

result, error = upload_content_screenshot(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
