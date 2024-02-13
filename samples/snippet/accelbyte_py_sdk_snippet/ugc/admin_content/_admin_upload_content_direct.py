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

Example: '{"customAttributes": {"z6z9czvOFzHWheM9": {}, "Thuv5rs8BXPpZGPv": {}, "9yWedrKslJug3bLB": {}}, "name": "4DAPJn2GqMmOhZiv", "payload": "XXikcN34015sOyrY", "preview": "lqcC6YnDY7VLQIy5", "previewMetadata": {"previewContentType": "V7XKlIA5CrzzmYGI", "previewFileExtension": "gkLwOa9Vxqe7CqF5"}, "subType": "jDCGmJo6gwEBYsL3", "tags": ["1CUZdwei1kwoZzjC", "hMfYXKT23M7Bqp2T", "vwFpGBzJC8eLBgTS"], "type": "ioOLWF5rTSQ771cb"}'
"""

result, error = admin_upload_content_direct(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
