import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateContentRequest
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
payload: str
preview: str
preview_metadata: ModelsPreviewMetadata
Definition: ModelsPreviewMetadata
    preview_content_type: str
    preview_file_extension: str
sub_type: str
tags: List[str]
type_: str
update_content_file: bool

Example: '{"contentType": "fsY5jXllwtJiwKJP", "customAttributes": {"PeOA94eA7mbF0x5M": {}, "U3f8OFKL0PRsCn25": {}, "dKGYXSsnEKDWQi5N": {}}, "fileExtension": "u9L0FuQ0wWIzVZzI", "name": "IiXAPRS7CuWjhH3a", "payload": "f9qAbnnZYQv2Xww9", "preview": "KbnovO795vK7b86L", "previewMetadata": {"previewContentType": "QzoXzc4iafvpicEW", "previewFileExtension": "bBeaV5T6Ex5Q6sja"}, "subType": "CHACZJu3zAwuumK0", "tags": ["a5QKq5qV8LFt1rC3", "wcapq0UB2CCVcKXW", "MgrKd5haz9z8KoLG"], "type": "YQo32bsvIvp1YFI5", "updateContentFile": true}'
"""

result, error = update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
