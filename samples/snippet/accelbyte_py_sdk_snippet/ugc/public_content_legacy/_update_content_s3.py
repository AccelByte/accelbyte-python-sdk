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

Example: '{"contentType": "U1yeaPkTqi47Rb1r", "customAttributes": {"BzmIhrEbrLKaCaRI": {}, "v1nGHRyjgOYSuyyf": {}, "O9aLgaFhCzmhhd2U": {}}, "fileExtension": "uV0RW000rZS3mX9o", "name": "qWPJqKabgPkVacNW", "payload": "j4vLGIDMAMGYb6Je", "preview": "CDnIJJpmVNxVOSDY", "previewMetadata": {"previewContentType": "l0KEIMQNKlRHWUPU", "previewFileExtension": "6bHpxeawkCPGno9C"}, "subType": "hM2RIHeIl64XXaqO", "tags": ["V5z60MbSzaw7geUC", "oxTfRAlA8hRYcpPC", "QZclc4WqAb62k1To"], "type": "2Zgk5M9idLea8qGq", "updateContentFile": false}'
"""

result, error = update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
