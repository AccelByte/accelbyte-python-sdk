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

Example: '{"customAttributes": {"VsmkeNUNqoADDX7D": {}, "wza7xAnLyoE4sLI3": {}, "5Jb2ssEujHnL2gtP": {}}, "name": "iyrqCRknsP4dJYhM", "payload": "vhNiRaA7z9QkxT7u", "preview": "C31gSQs3Cyg1pXwJ", "previewMetadata": {"previewContentType": "wJuPU7esnyT6Srsw", "previewFileExtension": "btU4coYcpZS8Xb4U"}, "subType": "8c5Df91gjgyjbQKj", "tags": ["BDfy21JIH3Ke28Z7", "QtZbP8sKzMKTtQjX", "OC8N521HBAZEn1D9"], "type": "lQnHqoufqqMxaotA"}'
"""

result, error = admin_upload_content_direct(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
