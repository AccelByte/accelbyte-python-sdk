import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_upload_content_direct
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

Example: '{"customAttributes": {"Yhqt48sMIyPOo7nv": {}, "TGzpQQTX1cwnRfR6": {}, "yG5yaKAH7V9Bzr1X": {}}, "name": "Mzm82Jq2RveUpLso", "payload": "H8q5BaD7KW8PqH4z", "preview": "pjvc15TfRwE0hpcP", "previewMetadata": {"previewContentType": "Ju7DzX2cEYTcTYvI", "previewFileExtension": "m3IXgTi2qPnFYgcd"}, "subType": "FRg3vulx98jdkI0z", "tags": ["pxbwN8A2FX0pWwZD", "vYUk8iGHyidfEKX1", "QGvhMal9MRxy7qiN"], "type": "eKvhSehRoWS6r7NB"}'
"""

result, error = admin_upload_content_direct(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
