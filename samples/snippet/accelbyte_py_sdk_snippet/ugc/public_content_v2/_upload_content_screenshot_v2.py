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

Example: '{"screenshots": [{"contentType": "oyIXYxSJm7EUIHVN", "description": "RA8WFEkBjkDqlwKl", "fileExtension": "bmp"}, {"contentType": "K1Pd2VGwF52GdxxM", "description": "PGmhxvXEa1XEPZpd", "fileExtension": "bmp"}, {"contentType": "LHSXSB2hYEXJz1O7", "description": "Iq9UfYrZ4R2ZipKI", "fileExtension": "png"}]}'
"""

result, error = upload_content_screenshot_v2(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
