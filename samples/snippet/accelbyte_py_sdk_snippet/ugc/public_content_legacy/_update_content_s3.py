import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_content_s3
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

Example: '{"contentType": "vjSmuUhuffBAylDd", "customAttributes": {"ehoO3njdUY1Mxhzq": {}, "8LIGfeqsy5E1fDUX": {}, "8nknL90PoZUoKMYx": {}}, "fileExtension": "U1SQIeEXA2WXsoRP", "name": "oGZZgPu3lGxzMPpG", "payload": "P82q75nsDUFBjW9b", "preview": "FTpujBa93HpHIVro", "previewMetadata": {"previewContentType": "vv1CAT1PeAA4EyMi", "previewFileExtension": "njR1wmdefA8XGZZN"}, "subType": "0CIM4lahiztiw9tq", "tags": ["5C64CuasVMzFzxi8", "l0jwjr7UpPiR3lsR", "w8LoJ71MvCJqOlE4"], "type": "GZYxRJd6X7ZKwouu", "updateContentFile": true}'
"""

result, error = update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
