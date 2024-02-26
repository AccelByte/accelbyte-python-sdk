import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_content_direct
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

Example: '{"customAttributes": {"ZFWDsrrHCPo8Ipm5": {}, "eT2OkSyK4QxARncr": {}, "dfhGpPM7R9OxTW3e": {}}, "name": "6V4S0DcOtiMg6Ce7", "payload": "8uEFK6jXg0AbKwIg", "preview": "d3RrLc0ww3ISodnY", "previewMetadata": {"previewContentType": "kjg0wUfHlWWj6aO3", "previewFileExtension": "BGg94a4GnWzwbVsu"}, "subType": "wpMawRGbORIcvnzW", "tags": ["H6IXfjjLkVcLdLHn", "qdGZNHpchbGRwWJF", "3LSf5xyYqS82Fe5p"], "type": "orvC8lVhK5GesdS3"}'
"""

result, error = update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
