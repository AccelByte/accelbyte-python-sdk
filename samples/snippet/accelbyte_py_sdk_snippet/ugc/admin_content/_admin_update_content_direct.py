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

Example: '{"customAttributes": {"oye2xZVZJnZZAlfO": {}, "euwVXa22NkQxQ9Jv": {}, "sniEdyjyCYFDitAa": {}}, "name": "bZwFXzRXgYlUwjS9", "payload": "BPvzxM3dHMXywDFh", "preview": "sC5GVnbM7TBC3qQk", "previewMetadata": {"previewContentType": "pHFAO7cu3nhUecys", "previewFileExtension": "rPRazmAVhzE9zmny"}, "subType": "NIyYMRzF23HzNAlY", "tags": ["hyQjTeXEHyNmatdf", "i95HWlAoddfzx6Nr", "Igs2ambpWMhNJY48"], "type": "Irz8qI8SsmwUJ6Z9"}'
"""

result, error = admin_update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
