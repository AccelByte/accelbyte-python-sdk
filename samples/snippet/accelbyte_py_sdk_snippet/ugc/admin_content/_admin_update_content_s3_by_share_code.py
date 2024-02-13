import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_content_s3_by_share_code
from accelbyte_py_sdk.api.ugc.models import ModelsAdminUpdateContentRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsAdminUpdateContentRequest
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
share_code: str
sub_type: str
tags: List[str]
type_: str
update_content_file: bool

Example: '{"contentType": "rmU0teRtbD6duPAO", "customAttributes": {"AueuJoQHEvOamIt6": {}, "LV3MQGQAPqirdC9s": {}, "9YdZgobgJEgR0Ckc": {}}, "fileExtension": "GDAI8FYdvRFtjAKH", "name": "gpuoZHLRIvs8DoAa", "payload": "S5BRyVAfjB80yiB9", "preview": "CvYtR20yTQCCkjm6", "previewMetadata": {"previewContentType": "0Mwut847dFwv0B4A", "previewFileExtension": "ZVVW100u4QrWvXAH"}, "shareCode": "AmnJKSxWfK6Fjfbi", "subType": "chRf3PonXmiYPfUR", "tags": ["HJ1rxJ0NsnFn3tKK", "ObjHjHhu7DgUWaX4", "QC0mJaUS6RT4nYzU"], "type": "yahF858v2DtMjwhS", "updateContentFile": true}'
"""

result, error = admin_update_content_s3_by_share_code(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
