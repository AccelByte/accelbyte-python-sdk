import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import create_content_direct
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

Example: '{"customAttributes": {"lpNmvifX2vaF82Uj": {}, "ldVbfb5GfBFqDyfA": {}, "PAdDpXWXuTlBNl9y": {}}, "name": "E9hVzwPL1SNIwWNb", "payload": "eF19vNCHL7NES5k8", "preview": "7GQqU76jbmUZc4JH", "previewMetadata": {"previewContentType": "6fNSG0pbFnbCjVXN", "previewFileExtension": "2unoB6nJ7nhzQihH"}, "subType": "3MMg06cD8MgYbDPa", "tags": ["0U1FDi6MJamgSPUk", "NMNb6VLUsnUOIA11", "EbsnooUVjaHHcOoJ"], "type": "is6FqbzzTQyYtQtd"}'
"""

result, error = create_content_direct(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
