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

Example: '{"screenshots": [{"contentType": "Q1aCDvtDbUgR5VhE", "description": "cnwv5pSh5rhaJRrq", "fileExtension": "png"}, {"contentType": "pbKusDhrZV7Qfzb3", "description": "ddv70vIzXa11FmuA", "fileExtension": "jpeg"}, {"contentType": "iH602mYDJH7LyWfD", "description": "qcBwRjHpMXIZYs3l", "fileExtension": "bmp"}]}'
"""

result, error = upload_content_screenshot_v2(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
