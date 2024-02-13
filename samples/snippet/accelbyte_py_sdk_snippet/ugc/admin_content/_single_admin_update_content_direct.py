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

Example: '{"customAttributes": {"vwN35i1MxM3ysCnb": {}, "zMBa2aRbR2wKx8AS": {}, "JUbaAtWfxPZYKo0j": {}}, "name": "vUVqx91dnlEChHZi", "payload": "ggjotIePyINGC31m", "preview": "kWYYl0IMXpVmXmdu", "previewMetadata": {"previewContentType": "LRiqNgGz0P85gpAI", "previewFileExtension": "tbbLEzwL9YgmlvEC"}, "subType": "w0MDordeR59RvuW6", "tags": ["xEgGVQgfcvuIMDpM", "5yUCRMl79PIofb7D", "uirNtqp91y84wX4y"], "type": "nLygJjfZdVTXJdfu"}'
"""

result, error = single_admin_update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
