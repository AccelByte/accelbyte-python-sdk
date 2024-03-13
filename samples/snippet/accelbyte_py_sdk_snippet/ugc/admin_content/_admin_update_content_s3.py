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

Example: '{"contentType": "igcFTeYJdQublwfl", "customAttributes": {"xhSzoCmeW1v0R2qh": {}, "eJwuSw0MLa2hFrVu": {}, "5IvMeP5dMOuYqMmD": {}}, "fileExtension": "eIouWOPX6qcdaWUC", "name": "R4mzHq0EB9rfnWl5", "payload": "ngyI83fXrFQ1g0ZZ", "preview": "T7ju7TJt55eRzIXW", "previewMetadata": {"previewContentType": "aZJga9XjFJeea4FP", "previewFileExtension": "Ku2qMpqif041TjBf"}, "shareCode": "R3FqAPajWYf8VTsU", "subType": "d9nGZJRwsQUhZ4p6", "tags": ["MvCnagWJzHtnGTRU", "BKu7IVOUH0uKpMhY", "lM62xeYdaCeTTNj2"], "type": "LVnRWSF2GQWkpclZ", "updateContentFile": false}'
"""

result, error = admin_update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
