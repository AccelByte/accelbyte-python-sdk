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

Example: '{"customAttributes": {"AEXJ9dIoxcZ52rTS": {}, "GZYofRy3Y4iyLN0r": {}, "wdXaZtvuzxt5JsLO": {}}, "name": "c5AE8Uke422duv6O", "payload": "edjljQzbpIjwwjfN", "preview": "lr9pM9GJM85myOet", "previewMetadata": {"previewContentType": "G9tfbVn2menG25JI", "previewFileExtension": "pgaEcY6LIbmiJ1V0"}, "subType": "7ujoPeBydSZ3mH7S", "tags": ["yzEDterccU91lKxE", "dIXir29jhWEtVAxp", "D4i81Y6EGhDeHTNB"], "type": "99w5jqCdez76R9gK"}'
"""

result, error = update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
