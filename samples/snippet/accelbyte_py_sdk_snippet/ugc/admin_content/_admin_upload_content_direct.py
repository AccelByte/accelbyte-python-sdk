import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_upload_content_direct
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateContentRequest
custom_attributes: Dict[str, Any]
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

Example: '{"customAttributes": {"chz2WgRF2ctyMKTH": {}, "1w405f7Y5Pr1aTVo": {}, "Ye1rqYfbDCd7gv6G": {}}, "name": "eJGKenZIBS3hYJOl", "payload": "vgV0z9FjBv7GV7Z8", "preview": "1HyGrlGbJZNySnaD", "previewMetadata": {"previewContentType": "T4maiXw7JUybPaCz", "previewFileExtension": "Ota9pOcVOg4ia8Nl"}, "subType": "C8Faxt9lJuptQYxH", "tags": ["FoJyrXZ8WySIvx37", "H0XUngeEyfNHfIgE", "73XRZ9WdBKznNoxZ"], "type": "zjYqstEy3pTsjUxr"}'
"""

result, error = admin_upload_content_direct(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
