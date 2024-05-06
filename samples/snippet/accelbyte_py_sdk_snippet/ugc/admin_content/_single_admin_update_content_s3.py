import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import single_admin_update_content_s3
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

Example: '{"contentType": "gryqOmDH2guXTxvL", "customAttributes": {"Ibq0RnPEREcUUUbI": {}, "Em5fyHal9lfHZgrM": {}, "2c18WoJ174WACIgG": {}}, "fileExtension": "5VwUvUf7ClkliJth", "name": "jmDtJJC5KePTdMSP", "payload": "HS4OtOkUMXTaYqVc", "preview": "DrROUMgthkuJjoTm", "previewMetadata": {"previewContentType": "zzObtXTfitx1uF75", "previewFileExtension": "DDOGfWQ3GcKHUBmg"}, "shareCode": "qNtko537qr5csylq", "subType": "p0HZhb2ZBuxvLf0K", "tags": ["2BtYAyZBnG1qHNts", "zdoahXdSeZ86KNvc", "yeL9deHoClDqHZeq"], "type": "dAhePIujqCproH8J", "updateContentFile": true}'
"""

result, error = single_admin_update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
