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

Example: '{"customAttributes": {"TAWewzCRmzL5jnf2": {}, "5JXSpLPG3a4mR2qw": {}, "jVkhBzt8oUhjhMIj": {}}, "name": "JbsIUVMckNIVmdaT", "payload": "VHOkzNOtKbVG5iWg", "preview": "lryac3uMDesNX1tq", "previewMetadata": {"previewContentType": "llmg7ov3hvmIngQR", "previewFileExtension": "4vchWl316SvN73t9"}, "subType": "3sreviBnA0ueg4fK", "tags": ["FkdIP4DWpk8ShylE", "gkW04saqkggUeyiP", "BWkT62dolyp6uQJi"], "type": "n3S4CUExPjg0gvEM"}'
"""

result, error = admin_update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
