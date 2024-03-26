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

Example: '{"screenshots": [{"contentType": "cYMHDQL52BkT99yI", "description": "IHfKYWM2HiHl904q", "fileExtension": "jpeg"}, {"contentType": "3d3UcWgL0xgbiVtb", "description": "yaFTPpnd8ZIUUU27", "fileExtension": "png"}, {"contentType": "6reuMODDYCzuiNQg", "description": "nqGTJWHQ0PZxLDJH", "fileExtension": "pjp"}]}'
"""

result, error = upload_content_screenshot_v2(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
