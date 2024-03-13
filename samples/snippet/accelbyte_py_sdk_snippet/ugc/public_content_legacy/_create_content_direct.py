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

Example: '{"customAttributes": {"3QmYyj0ItyL2qy1L": {}, "eaNHI0hBIg5npZIn": {}, "HOytKtDORQEfN1h6": {}}, "name": "yIW681yRmfOlZRxO", "payload": "xGU721LkdF5SzyYy", "preview": "QpUzclHMurRsoXf0", "previewMetadata": {"previewContentType": "Ec3nYc3qHzBTwiHW", "previewFileExtension": "OYGVIfBoQzYp49CT"}, "subType": "PxCOmkINIeWtfea5", "tags": ["ehX66lG7z506GRic", "3vtrkdHYorqYFzra", "jvvHmJYYnpJ4dUhU"], "type": "vhFXMI2Bbs6Al1xi"}'
"""

result, error = create_content_direct(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
