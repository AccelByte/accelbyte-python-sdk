import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_content_s3_by_share_code
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

Example: '{"contentType": "UmiUNTSG3ZEysKSx", "customAttributes": {"c7AcMGNtg94qgZ7I": {}, "ZBOC67Wx7TLB9xaH": {}, "m9holB35B5ZcKrrT": {}}, "fileExtension": "AZYCyGuf52ntKBrg", "name": "WYNe6H9N5rMA7jbN", "payload": "ijchkI17SjIew83q", "preview": "10gCQmo0gzlkDOLH", "previewMetadata": {"previewContentType": "2NmBx3LFW6TAqc2L", "previewFileExtension": "uwcelbnU7oQzekQq"}, "shareCode": "FLWHfBG7xzpWPTvb", "subType": "WAJV4XeJoVWtaLzw", "tags": ["nWvLjHiD6HhVrUJy", "UPj0qIvK0p23RDBK", "thS9J1fdaakoPovM"], "type": "GCgNZIRqnqrhv75W", "updateContentFile": true}'
"""

result, error = admin_update_content_s3_by_share_code(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
