import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsAdminUpdateContentRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsAdminUpdateContentRequest
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
share_code: str
sub_type: str
tags: List[str]
type_: str
update_content_file: bool

Example: '{"contentType": "21aixKiPdqUStUjv", "customAttributes": {"zbDckYHTVVHnvkB3": {}, "tnN8puJCBYUw15Xd": {}, "w99m48H6Y9XXHJ2j": {}}, "fileExtension": "uVnd0nqxGYeujvoH", "name": "2MmZ5eo225UsrMIW", "payload": "NlydgRG3UoQBbq38", "preview": "7A07c5MsG2KJuW3h", "previewMetadata": {"previewContentType": "CWNvCoEey7487LKW", "previewFileExtension": "OFOolfK6yCX4HWt5"}, "shareCode": "RceRwXM56LAjV72T", "subType": "CACV0PFIdVVPskRC", "tags": ["CxErvu7gKxcDG6yh", "37pszeMTFXcOBIFH", "uGE9PT93nvgfyoqr"], "type": "XwnlLu1KkK3dhUEk", "updateContentFile": true}'
"""

result, error = admin_update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
