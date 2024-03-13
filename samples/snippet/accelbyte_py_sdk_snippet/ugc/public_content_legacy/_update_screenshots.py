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

Example: '{"screenshots": [{"description": "8lRDKITHxhOEwd1E", "screenshotId": "rGs5PZ2FL5pgvbUg"}, {"description": "fWy5Uz4E3n3clg64", "screenshotId": "aEn1VigGz8X8207t"}, {"description": "EethiziabHoA5LDk", "screenshotId": "EPN2WyWzj1TKufzB"}]}'
"""

result, error = update_screenshots(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
