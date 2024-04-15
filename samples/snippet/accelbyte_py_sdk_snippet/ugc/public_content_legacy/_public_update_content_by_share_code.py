import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_update_content_by_share_code
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

Example: '{"contentType": "TVZ13uol8J2lxkQK", "customAttributes": {"q8yOSNij34uHlowE": {}, "2aiWFuQCIHzFPjrh": {}, "FWTcvWvewn883sZu": {}}, "fileExtension": "HkiFmoLmBi3q8Mwb", "name": "TMLFYAhRhXTR9ba5", "payload": "uDK1K4c3eUGvuFgT", "preview": "cE6ZsSETTQkj5NDu", "previewMetadata": {"previewContentType": "MPkG8VGQptug7XcE", "previewFileExtension": "aBoD9Cg3Gvfeesb5"}, "subType": "CjLRJf7OIQ3e9PqH", "tags": ["Z9tM2zBYkHADhcDP", "OmrQqrhNtzZJhq1N", "jNEiAy2fQayN6dyd"], "type": "NfL86f3l8KImUaG9", "updateContentFile": true}'
"""

result, error = public_update_content_by_share_code(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
