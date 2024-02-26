import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_content_s3
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

Example: '{"contentType": "txuTF9kdEPow7t86", "customAttributes": {"THNKv0GlXitjcgXr": {}, "1tG2NPVNGan6bPik": {}, "KBuUJjV35E8jTSvo": {}}, "fileExtension": "amSNgjOKH8Ac8GSP", "name": "ENfNSG1JMTF47fbE", "payload": "qgJOCsiY3iGZD5ov", "preview": "1HlenFakILn61gku", "previewMetadata": {"previewContentType": "GjUNqpgqoMNqYiyP", "previewFileExtension": "m82KNHOL9m9Bagf6"}, "shareCode": "fRUNF55uwIDnMbvy", "subType": "eS5twD2Wz1larjhF", "tags": ["mlKeME0VX1lNYmpo", "6OyVr9QGmzpOsrWg", "gVcLRajH1Bp9UgyZ"], "type": "SUWz9DbAYzRoTEiu", "updateContentFile": true}'
"""

result, error = admin_update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
