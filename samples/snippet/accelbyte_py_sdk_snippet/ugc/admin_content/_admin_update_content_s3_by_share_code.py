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

Example: '{"contentType": "PvzD1plBUAANE3CY", "customAttributes": {"KkseXLQdBu13F3sZ": {}, "HUnpz8VTk69MqCmT": {}, "0jMtMAY3TPnTv7WR": {}}, "fileExtension": "73yRJ83vQSL3w7ms", "name": "StGFaJr5OmFDN3Sm", "payload": "WKXDsAIeigWSbmlU", "preview": "h450Yvyj5tq6OqiN", "previewMetadata": {"previewContentType": "cFkUOINP0byJFi3w", "previewFileExtension": "80qp6JpAIGaoGHJh"}, "shareCode": "owNA16Tm8GqRMJrl", "subType": "Z8izyJTxKPdjp79Q", "tags": ["SLNImz4xxG5t18yK", "EsACLjcSmrWT1Y7W", "lmbLWkcuI3CGJL02"], "type": "SSTZsaxver45xJHd", "updateContentFile": false}'
"""

result, error = admin_update_content_s3_by_share_code(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
