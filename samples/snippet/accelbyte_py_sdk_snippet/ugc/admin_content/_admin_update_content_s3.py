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

Example: '{"contentType": "3bAjSenGOgYs76B1", "customAttributes": {"6vGNjo8U73VeH5K2": {}, "gCzhZOgAokgXS8D0": {}, "AUDqVYC8lwsjarKK": {}}, "fileExtension": "xXEXnBQepPNSrrcW", "name": "IsGyEbBv2RM1zWD8", "payload": "V5fLvLp1wviZpODK", "preview": "0p8fSfibzxfOwLJd", "previewMetadata": {"previewContentType": "mgVNUMtmUXyQ9qyv", "previewFileExtension": "j4TxFC43Mi06ZQKe"}, "shareCode": "eWWkETYv9aUkEJzP", "subType": "mhfrBGfhPuYJ00VX", "tags": ["xLG4BckaLmKp9RlV", "rL3sUMpwhIQgTRwk", "AqYeL3BmdczEbTEc"], "type": "HX6VoWPz13HI6anG", "updateContentFile": false}'
"""

result, error = admin_update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
