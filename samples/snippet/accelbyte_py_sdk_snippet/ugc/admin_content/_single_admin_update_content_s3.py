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

Example: '{"contentType": "WO2W2UuB1tnRpDoH", "customAttributes": {"z9Fq0mE05znyrTjN": {}, "2QUsjtZMhhk3vi2K": {}, "noqYx9isk6Y6yDIt": {}}, "fileExtension": "I6SSElLZsMFtuPSo", "name": "66oWo7iTT957Zomu", "payload": "hskY1pdrji9TzC7t", "preview": "JE0UN5VfTQ6OzEVk", "previewMetadata": {"previewContentType": "fpTluyOsBGOClkuF", "previewFileExtension": "Ou2Q4wC0k70iMU23"}, "shareCode": "1BrZguhZcr9KXfa7", "subType": "n3i3b2KlZF4DGLz9", "tags": ["bWc1Dyxr5sDIFWyK", "z0EfsFxJNXt5TLOU", "ciu5netSxmzSW4OQ"], "type": "hlWmzJH3CCAo7qzW", "updateContentFile": false}'
"""

result, error = single_admin_update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
