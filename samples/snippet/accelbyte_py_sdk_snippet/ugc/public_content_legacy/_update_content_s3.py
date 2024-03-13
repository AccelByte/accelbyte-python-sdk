import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateContentRequest
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
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
update_content_file: bool

Example: '{"contentType": "Q2i0iS6kkRHigjdx", "customAttributes": {"sIB94k9lM234O8YU": {}, "9AohQxYKhNBAZRsN": {}, "3HvGipkfR7ig6C4A": {}}, "fileExtension": "YJGMcfrLmXcLVzAT", "name": "W6cD0VSmRJoU2dx3", "payload": "tQXnSERRhVT3Ds9N", "preview": "SnEcW5yll2xSwRxo", "previewMetadata": {"previewContentType": "b6XsiRw907O4nbYQ", "previewFileExtension": "RTdKno8f7yzfcSiu"}, "subType": "iqfM9j3iARIeWS1B", "tags": ["F3ZynDWbPHV3x0BV", "q6I6e676nz64pc9L", "IdavHSPKkiiqxgCw"], "type": "oOaULadRy1Bey9Lj", "updateContentFile": true}'
"""

result, error = update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
