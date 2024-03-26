import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_update_content_by_share_code
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateContentRequest
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
sub_type: str
tags: List[str]
type_: str
update_content_file: bool

Example: '{"contentType": "L4dvtcCfixPCKZY7", "customAttributes": {"7eLjtBxy8BSreRm7": {}, "KoXFOkRapzvNSaTl": {}, "BV8bVfl5bzEZqkjk": {}}, "fileExtension": "YrwCYG0IIbIL4IeX", "name": "Aa724faMAdqh5iiO", "payload": "nskT34clAx7lTufL", "preview": "MpYD2jf2tltGxno6", "previewMetadata": {"previewContentType": "ypkLmpAeilwj3Q8q", "previewFileExtension": "vvmqCNThy1w1JsJm"}, "subType": "rHx1S0q4Z3Ht4sna", "tags": ["neUsIXnkWmiVBiy2", "VUka8uCHldKMVMbw", "TqJU0JpVpiugo44t"], "type": "HRBzaWw1qpSdiWui", "updateContentFile": true}'
"""

result, error = public_update_content_by_share_code(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
