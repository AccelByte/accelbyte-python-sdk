import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_upload_content_screenshot
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

Example: '{"screenshots": [{"contentType": "Emd09giUxcTsvHMm", "description": "9ePSERGo22NNWWMp", "fileExtension": "bmp"}, {"contentType": "W2zF6HtusXprXDiU", "description": "rZeNwJqZUYjo4G6e", "fileExtension": "png"}, {"contentType": "aR1HHhDTnHWJA8b1", "description": "cFYYFzvjaK8ENLDg", "fileExtension": "png"}]}'
"""

result, error = admin_upload_content_screenshot(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
