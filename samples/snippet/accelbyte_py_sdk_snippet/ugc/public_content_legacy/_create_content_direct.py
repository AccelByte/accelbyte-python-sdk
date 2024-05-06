import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import create_content_direct
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

Example: '{"customAttributes": {"4nPOvkWuVTihSne8": {}, "P7mvw7H8NtdhuPdO": {}, "yMPRygrwUkbxCvmh": {}}, "name": "8TWPVLq5sm2MzDwv", "payload": "b99OiYJykmAvzdpx", "preview": "k8lgYc79Hn2Ll6eU", "previewMetadata": {"previewContentType": "rYrwSXjvuDt81jw5", "previewFileExtension": "2DmKmWU07wskIX1w"}, "subType": "0XVTptNeILk2xsBg", "tags": ["HKS8IlrXS2PVXLOj", "Vz8o7SDGKJji1tPH", "NeL5A8JcMBioPdac"], "type": "P81St8AbmlKmcGsd"}'
"""

result, error = create_content_direct(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
