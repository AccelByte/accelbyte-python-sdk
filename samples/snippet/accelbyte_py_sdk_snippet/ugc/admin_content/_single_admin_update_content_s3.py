import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import single_admin_update_content_s3
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

Example: '{"contentType": "JzST6TD8qdAWYOGj", "customAttributes": {"tH5zvxBpSHvPiBrc": {}, "8lYfRVOxjNtrkY2a": {}, "j4kHygSIDKTI8H40": {}}, "fileExtension": "Q5g8JAtdqxVmQO7Z", "name": "hh6MuNB4zhlhNYiF", "payload": "hluAhSkbCbaVHuv0", "preview": "szNa1GBP0Y4nQeFJ", "previewMetadata": {"previewContentType": "7jK6uFvqqCjMfA4n", "previewFileExtension": "QoMyPvMQ1ZI93x6b"}, "shareCode": "CgPyW6TN22z2fK0u", "subType": "3LStPy2oz5T5Dn0U", "tags": ["rfzcTyWpQfTa3Y7H", "93KBLbv13l8WfvtU", "XTGxVl3c2kwg3pyt"], "type": "G7zVi3WxFF4FfOcA", "updateContentFile": true}'
"""

result, error = single_admin_update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
