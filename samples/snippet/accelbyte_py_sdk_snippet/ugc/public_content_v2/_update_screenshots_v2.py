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

Example: '{"screenshots": [{"description": "DEigS3a2hOsfLqyl", "screenshotId": "TnTVUp0kIEPFBR5n"}, {"description": "eW3MrcT8jAukwcZh", "screenshotId": "TdPXV7O0GTjnYt6O"}, {"description": "MkZB5OB3C0iqnAmn", "screenshotId": "y00Ml1bNF3w5PJwt"}]}'
"""

result, error = update_screenshots_v2(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
