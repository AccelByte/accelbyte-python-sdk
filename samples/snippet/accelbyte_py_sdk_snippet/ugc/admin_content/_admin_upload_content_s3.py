import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_upload_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentRequestS3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateContentRequestS3
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
preview: str
preview_metadata: ModelsPreviewMetadata
Definition: ModelsPreviewMetadata
    preview_content_type: str
    preview_file_extension: str
share_code: str
sub_type: str
tags: List[str]
type_: str

Example: '{"contentType": "ctuxg2trBi9RdFly", "customAttributes": {"oLDbbxyXzAm9hcd3": {}, "cnLBWiVkU1UzmQJ1": {}, "kOqjWzyXiGwP7sO9": {}}, "fileExtension": "jZTYIsZZZSLCXLDl", "name": "iT9un7p4refZGTNG", "preview": "NMLroXg0Iibv4wRU", "previewMetadata": {"previewContentType": "DYy9tJB6PY5szS38", "previewFileExtension": "OFgh0XkWgexJpOu3"}, "shareCode": "PynNu9siZlKABkNk", "subType": "EQHt6SDnYrd4wNiz", "tags": ["734g1PSb0NqFtfqN", "HPlI6858Yf3HaIzL", "iP77UhumqxqlwRvP"], "type": "c4uHs8DNzJG0nPj8"}'
"""

result, error = admin_upload_content_s3(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
