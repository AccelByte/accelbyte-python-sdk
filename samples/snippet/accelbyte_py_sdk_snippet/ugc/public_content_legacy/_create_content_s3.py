import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import create_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ModelsPublicCreateContentRequestS3
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsPublicCreateContentRequestS3
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
preview: str
preview_metadata: ModelsPreviewMetadata
Definition: ModelsPreviewMetadata
    preview_content_type: str
    preview_file_extension: str
sub_type: str
tags: List[str]
type_: str

Example: '{"contentType": "my60FaRNqcCoy9SP", "customAttributes": {"j4BViZ8DUkMzYEIz": {}, "IINoJkZNe28iwtCg": {}, "NpVHLvtezR7TFZw4": {}}, "fileExtension": "D0o6J0qr5hQobmxE", "name": "fCcWfMxukxUIoVK7", "preview": "AVxHZVtXtqX6627S", "previewMetadata": {"previewContentType": "hi1fNkSB2cS55Db9", "previewFileExtension": "ND2J1E2YtWqIbYjf"}, "subType": "sqW6QgcGXibNdeD7", "tags": ["aLkkPEWE9fM9Iaoo", "RFAEiaoGcNKZOnSc", "Lw924wNHfnwnXeQj"], "type": "1zRUrYnqBoH4IqZj"}'
"""

result, error = create_content_s3(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
