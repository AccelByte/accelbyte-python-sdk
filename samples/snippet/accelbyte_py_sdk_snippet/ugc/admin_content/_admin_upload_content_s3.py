import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_upload_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentRequestS3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateContentRequestS3
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
preview: str
preview_metadata: ModelsPreviewMetadata
Definition: ModelsPreviewMetadata
    preview_content_type: str
    preview_file_extension: str
share_code: str
sub_type: str
tags: List[str]
type_: str

Example: '{"contentType": "UZdtw8ckypkkFql8", "customAttributes": {"z09mge3hIbn9eX46": {}, "7EMcb6hScUcLeinw": {}, "vF9xBdWVOYovlFJV": {}}, "fileExtension": "ZvLDQYRmtPbHYG6l", "name": "a3xQmTzq9OGMsqFk", "preview": "Pp8SvmgOvgzHZ8KF", "previewMetadata": {"previewContentType": "hqVpxaOffe5nv3kW", "previewFileExtension": "RXvRIsARXrwJy341"}, "shareCode": "aEm320OUz4FGBhvX", "subType": "hTJFiJKD3JsRQXVs", "tags": ["j1pcw4gClECIE16h", "4fgZVUJveOvWcNpP", "jsqXZ0qI8CbPyiPe"], "type": "bSQ86dvgwO8d1AEJ"}'
"""

result, error = admin_upload_content_s3(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
