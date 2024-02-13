import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_screenshots_v2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateScreenshotRequest
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateScreenshotResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateScreenshotRequest
screenshots: List[ModelsUpdateScreenshot]
Definition: List[ModelsUpdateScreenshot]
    description: str
    screenshot_id: str

Example: '{"screenshots": [{"description": "J34D5kaCmMbXt64S", "screenshotId": "Amv7ck37gjj0nM51"}, {"description": "ts2MGvNDOY2yEdeV", "screenshotId": "GndlFMbxE3olG6bJ"}, {"description": "q274aW0gyK2fKox8", "screenshotId": "ZnTe6OAOT6bmscHO"}]}'
"""

result, error = update_screenshots_v2(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
