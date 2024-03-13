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

Example: '{"customAttributes": {"Gxr4elQvUutdx5Mz": {}, "La95exfy8ak1gK2m": {}, "wlXTPcPpF66dwBF3": {}}, "name": "72xMFpkuzEyfLooS", "payload": "jPGFd0QGg6OYg0IN", "preview": "QQn19vXyfTD6hP3w", "previewMetadata": {"previewContentType": "Kb4z4F4H1cL0xdDC", "previewFileExtension": "WRAGQOuwObMj6n8j"}, "subType": "yyZltuSi1HiAdEXD", "tags": ["DDIMosEiZtQkRrzI", "r2j0Ulm9UBrxz8OE", "UrcuP2SaWU0hh4Y1"], "type": "P5kELrZWO0pc8fEn"}'
"""

result, error = admin_upload_content_direct(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
