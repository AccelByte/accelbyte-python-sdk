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

Example: '{"screenshots": [{"contentType": "DIGQMyx8hJKHgwCn", "description": "zGSL0RFOUGDdF5w8", "fileExtension": "jpeg"}, {"contentType": "ZJp2NQFnp5WODsmL", "description": "YahmwyjdgvUyePbC", "fileExtension": "pjp"}, {"contentType": "zyS3vIocg13ZsrTd", "description": "gsPrxNKRqcb0Pxo7", "fileExtension": "png"}]}'
"""

result, error = upload_content_screenshot(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
