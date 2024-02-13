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

Example: '{"contentType": "x3bCphFIeZ9oX4Xx", "customAttributes": {"L2XlK6kp4i7TgMqz": {}, "A7GMoSwT82efl8Ys": {}, "pcyR04gVAzHSPSAe": {}}, "fileExtension": "HJmdyfgNZ0Wc1RNb", "name": "EjnDItxKLcpKzO0q", "payload": "Nh1rEmhBs67utl1L", "preview": "f1kyORslY6hLQpP4", "previewMetadata": {"previewContentType": "kMBTBXuyLYicI5Gk", "previewFileExtension": "WhvOuE8T2KO5YBZq"}, "shareCode": "GRbBRhFuYPkQ29Ig", "subType": "XoUCff3h2SxvTPbi", "tags": ["Ko8lsUrH63X30j8q", "YaXuqRgYf1oTVp3Z", "WwlXPWgOUNSO7bR4"], "type": "VueXED2KFnKXJtZl", "updateContentFile": true}'
"""

result, error = admin_update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
