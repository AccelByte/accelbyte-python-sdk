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

Example: '{"contentType": "PA08TgiWfbi3Ulp6", "customAttributes": {"qVaVlii6N1JAb71y": {}, "5FKVLDqAfMhQeN3s": {}, "MghRqLzXQHBhRXkn": {}}, "fileExtension": "U39YvzbbcUfIqm9L", "name": "mJoLBPFKpJN43sgE", "payload": "fcZLiK2ZhPQQLXjQ", "preview": "3Dxi2RZpaBZAvVqj", "previewMetadata": {"previewContentType": "Nm8equOQPXV3rbrl", "previewFileExtension": "tXKSmgtRetzI3wKG"}, "shareCode": "ZfacXn1d7T3Pbyw7", "subType": "FhrOHV3UffvHxIuI", "tags": ["ePl7j6GQFCT09hNZ", "fZQ9z9nFtTglJ0ap", "YXRh93V7my3ktJKZ"], "type": "t9tslwoFLfqPfDWg", "updateContentFile": false}'
"""

result, error = admin_update_content_s3_by_share_code(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
