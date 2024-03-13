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

Example: '{"contentType": "pGY6nsZG5ruUklKp", "customAttributes": {"YruBkZbfo7hLAsFQ": {}, "iYkMwrwC5AAlyQeI": {}, "aSpvncFAbrkHJp4B": {}}, "fileExtension": "ackLhgvHfAbYt3lZ", "name": "b88FO2fnuQLDD0Ci", "payload": "ahI5sZ0d5bJH6g26", "preview": "mfYonrfbH45Bmuyy", "previewMetadata": {"previewContentType": "2PpTZjN0dTMl02Yo", "previewFileExtension": "brU3F8YAVFATPnWo"}, "shareCode": "dqahArXsZL5mncgC", "subType": "OypzyZAd1H2vPJSb", "tags": ["2eV2i5YK53dSECV3", "8IByH6N9nJa3dYEf", "1LyOUzu5wRssluYV"], "type": "ahSWDJa4pOr0S7Zn", "updateContentFile": true}'
"""

result, error = admin_update_content_s3_by_share_code(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
