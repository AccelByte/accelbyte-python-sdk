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

Example: '{"contentType": "fP190kPMax48wZ0m", "customAttributes": {"3GBDaHsDGPlPyem6": {}, "KISNFKMU0CTvmXO3": {}, "sFQL5gENJURGe4dX": {}}, "fileExtension": "0axkTg5geXnmkqr8", "name": "jincgWcG7BAsHj5j", "preview": "7v8iU3Drg2zETaAR", "previewMetadata": {"previewContentType": "lLpemCsI5icVK4h4", "previewFileExtension": "DUM8aJRx73Y4fHx3"}, "shareCode": "kTKg825UwWwW3hqN", "subType": "mPC6UQypx6V7WV4t", "tags": ["0OQt9ZZBMk7w6Wnd", "GBuH8wtPGzBDNF7Y", "PBPambysukpyOslh"], "type": "6XddBS5gVVoUeIJR"}'
"""

result, error = admin_upload_content_s3(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
