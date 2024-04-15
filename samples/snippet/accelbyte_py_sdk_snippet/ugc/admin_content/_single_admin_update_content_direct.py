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

Example: '{"customAttributes": {"p7y9ouSlK7HbAYsL": {}, "zEcvMakGZW3hgWEC": {}, "oaajSFBFSqkEyZLh": {}}, "name": "p7OtTz5NYaMIts59", "payload": "Ay3YFIQqewTCu3xv", "preview": "7I1PP0pyG5M6tW9w", "previewMetadata": {"previewContentType": "9I8f6ULaQqGjMvx1", "previewFileExtension": "koUCzqX89kWEhFbq"}, "subType": "4JmhKCt5NXTu15x7", "tags": ["kWIXXzWwVhsz5sgw", "oBjiuOYLve6AKDaJ", "hG3gU271zM2TGu1r"], "type": "2ZYkE5QxcUcLbiPc"}'
"""

result, error = single_admin_update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
