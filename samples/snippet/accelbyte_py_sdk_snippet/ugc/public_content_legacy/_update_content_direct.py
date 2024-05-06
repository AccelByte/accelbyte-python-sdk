import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_content_direct
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

Example: '{"customAttributes": {"FrLojpdDDJJ2L6UB": {}, "4bJrwun4MvM7ctT0": {}, "z063PtuklxZMLJHQ": {}}, "name": "T1vI03FHC0xTSrf5", "payload": "s4VLzKfULDs8W73p", "preview": "AyvOsGRTFqGmEB5W", "previewMetadata": {"previewContentType": "9tBosQoZGjH9qlGo", "previewFileExtension": "aZtIHAFfuJ8gSNCu"}, "subType": "A8dLTaqN2pJGW7Jx", "tags": ["ZhjyFoV2CYHpud4W", "8RLBtUkDZHxBfVV7", "5cTKEuYmVSxU7SMS"], "type": "WRPq23nzP8YAkt1u"}'
"""

result, error = update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
