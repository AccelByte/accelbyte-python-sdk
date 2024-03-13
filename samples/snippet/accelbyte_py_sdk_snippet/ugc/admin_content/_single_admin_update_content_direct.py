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

Example: '{"customAttributes": {"NFsOaHP7owEVYXEx": {}, "nhJzULYAtGdc8g6L": {}, "bSyr37imYGn0OGgv": {}}, "name": "6URc9uuOf38eLeEs", "payload": "7ruaalNJWUJMYRu1", "preview": "AA0c1lWwbIqQQTh0", "previewMetadata": {"previewContentType": "cI2ltqwwVo03nmBE", "previewFileExtension": "V33cBW4ybK3bxzbt"}, "subType": "euCIp0czRB0quwcw", "tags": ["HoDlAp3rC3HRCG9P", "nHa9jUNzvfFbG4W2", "ZYKoxSe0FJny1rwC"], "type": "hUORT0MYQBUa4BEq"}'
"""

result, error = single_admin_update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
