import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_content_direct
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

Example: '{"customAttributes": {"iPGbhSx31YM0BcOr": {}, "lPQzui9DShMmFy3M": {}, "ua3UJr2HS2ddZH4J": {}}, "name": "O8tPqHBD5j3NSAY2", "payload": "n9liqcdMTyJjY4Vx", "preview": "b9oTK9J7eVdCDHRI", "previewMetadata": {"previewContentType": "CF9tNXZOqNhvUTK4", "previewFileExtension": "XVf6NND6fLiCwMHJ"}, "subType": "Ydtzp7jGfaLLeOTY", "tags": ["FFgNPn0UydPR1pWL", "GeW43sbVgzlJK7c8", "EHerkPPYNb0hx3ey"], "type": "MfBStlWV9IisHSoF"}'
"""

result, error = admin_update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
