import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_content_direct
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

Example: '{"customAttributes": {"eAopagOqHji4KsvU": {}, "22CsdNfMF2FCy5xV": {}, "5hMDioULGONEXeoX": {}}, "name": "C3pqN1Lx0O3By2C4", "payload": "aAvxPGMAtvoCm2lu", "preview": "deqvXCVRJKTST2SJ", "previewMetadata": {"previewContentType": "q32sXutNvnxeFOkF", "previewFileExtension": "eP8CCz3aM8bhotCv"}, "subType": "x5ebbTTI8osXVtDZ", "tags": ["SLyG0bytl74SkyuN", "dNpF0D7Q5n28pRqa", "dW6p6GngBRoPHUBK"], "type": "3Bn3eMRFCNuF1cNX"}'
"""

result, error = admin_update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
