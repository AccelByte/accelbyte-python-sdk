import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_content_direct
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

Example: '{"customAttributes": {"74Mz4ZdbgC7CmxSz": {}, "vY5Xa5I3yp9pP29K": {}, "2b8q80b62c0cteuP": {}}, "name": "Ebs6nNNOmXNn7pP5", "payload": "PPs0LW9b5BQUE9xZ", "preview": "k6afqNqe0NqPX6b9", "previewMetadata": {"previewContentType": "zYYyoxPDtocV0FtC", "previewFileExtension": "2dqqPzwjVnX7ZDUV"}, "subType": "aAqZCYxqkW3X0ke3", "tags": ["7b4zseIeAxXEmdT8", "8yW8AWicTDTWVSDj", "22RjM77EwdooKoyO"], "type": "JceXW1BcZJsTMgDY"}'
"""

result, error = admin_update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
