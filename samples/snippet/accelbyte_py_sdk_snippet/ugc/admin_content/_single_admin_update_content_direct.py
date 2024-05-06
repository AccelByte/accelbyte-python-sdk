import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import single_admin_update_content_direct
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

Example: '{"customAttributes": {"q0QpYeNhID9JKGl3": {}, "pglFjnTKu9P1EdRy": {}, "nMBAfFW5Y9VFP0eR": {}}, "name": "1bdoqY1fwvZ5nsxu", "payload": "htdbNnuJdiWTrWMP", "preview": "pXmmEl6AgHWo6k5Q", "previewMetadata": {"previewContentType": "jmWndjAPk8r638Ti", "previewFileExtension": "bE43x3KatpXc8pNS"}, "subType": "Vi8Zo8LGoYqyRzjL", "tags": ["U5y7MJPZUxb4Sx6V", "T4yN3PUDmyRUq2wx", "FJ06dTgiJ6X4FY3S"], "type": "6LmdJErDfZ4LkhLg"}'
"""

result, error = single_admin_update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
