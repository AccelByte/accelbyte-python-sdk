import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import single_admin_update_content_s3
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

Example: '{"contentType": "TUKApPp0hbOy9wPb", "customAttributes": {"Q17DOscEKuqzjfYY": {}, "fNApnbPAmKYdr2iO": {}, "NTFgfcUxCYKFDIKc": {}}, "fileExtension": "HBpwP8A9dn7iBdcq", "name": "NqkdJ0KdPkb5sqjR", "payload": "aFxv0PrxNDKgxx9x", "preview": "Dq0PXhNgUFrS5ZIO", "previewMetadata": {"previewContentType": "O0m6wHUfDiTcdA5Y", "previewFileExtension": "Sli1Q57eHqOeN5Yn"}, "shareCode": "UTc33uY6hhIRki8l", "subType": "QBiQp34foy26tx3L", "tags": ["adjeGUPDDX19x7ok", "0ccLSFa8xVPk5EbB", "fltLlanJRUaY09yp"], "type": "lKSVUKy7S0hgNk3c", "updateContentFile": true}'
"""

result, error = single_admin_update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
