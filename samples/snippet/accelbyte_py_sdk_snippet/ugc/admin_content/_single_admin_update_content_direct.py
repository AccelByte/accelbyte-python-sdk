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

Example: '{"customAttributes": {"IBgv0EuPMQk8T7Va": {}, "UElvGQjOAoTJSMpO": {}, "QWD9GYcf3ZFQe5I4": {}}, "name": "cIvRov12aJhZTLvy", "payload": "RIbiAPHAchET0lBT", "preview": "u29BL0dXx6Vls0tu", "previewMetadata": {"previewContentType": "L7afOcFiuBTCrpH1", "previewFileExtension": "4FXXKSjilaHVTtj2"}, "subType": "cnesD2fbsdru0t83", "tags": ["81D12Y1O6ctUrvyQ", "SnKmo3Wunc8GoIDk", "HVeTJNngE9ham1Vg"], "type": "9bU3sSP3CESnHPW6"}'
"""

result, error = single_admin_update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
