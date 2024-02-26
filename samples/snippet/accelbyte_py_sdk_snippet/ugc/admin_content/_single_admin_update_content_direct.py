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

Example: '{"customAttributes": {"5Tey7WKzgjjS9xbp": {}, "BLhDUqy5z2hgm3zi": {}, "QSAqauz18KECdcNU": {}}, "name": "IgzC2NsTWKOFTN9i", "payload": "AZGk1qWtTY7q3UvB", "preview": "vZQzjrD2hk6PaUiy", "previewMetadata": {"previewContentType": "eCuuOsGBLuvIClrf", "previewFileExtension": "8m7cP9RGZZKS4N1c"}, "subType": "nshi6NrQxykN3XbO", "tags": ["I8nCRgP8nu76zdIF", "qLeITtxeA6S0Zy2v", "0tMgQ7f6xGg3Dw4N"], "type": "MbK6t5Pjhex5LwWw"}'
"""

result, error = single_admin_update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
