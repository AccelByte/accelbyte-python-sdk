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

Example: '{"contentType": "kYisZ1FFLia6mdkD", "customAttributes": {"vmNAfFB2NnpKsrfb": {}, "pblt0YyCXBAx95ay": {}, "D13OY2UPoBA9Dx4t": {}}, "fileExtension": "BeWZngRKIkJJpwIn", "name": "yt2bGw9mDYMUVtIO", "payload": "uVR48WsBkXDBsMEb", "preview": "sQIm6otgguyokehH", "previewMetadata": {"previewContentType": "RsTAb050R7VI48qD", "previewFileExtension": "bpqO0L16sNaQdKsG"}, "shareCode": "wH4GTM4ri0P5TAsh", "subType": "pIuiUrRGDpA4auQP", "tags": ["E6LxBq6ml5Nm6Lxl", "EgEd9mBf88ONWr6E", "UDKT3pSLwP4c32dE"], "type": "cuK3TO81OyERFEz6", "updateContentFile": false}'
"""

result, error = admin_update_content_s3_by_share_code(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
