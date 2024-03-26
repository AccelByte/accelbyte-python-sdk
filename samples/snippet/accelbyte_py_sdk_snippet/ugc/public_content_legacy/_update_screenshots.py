import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_screenshots
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

Example: '{"screenshots": [{"description": "ylWlP06RWKyXZS4H", "screenshotId": "eouZjAvak8DQt4A3"}, {"description": "AjfIDzylWatYCUjs", "screenshotId": "aJqSr6nuUjqwHFG2"}, {"description": "5iPE6nPRqTpLISCA", "screenshotId": "lTs4PmFEwyPqZnTq"}]}'
"""

result, error = update_screenshots(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
