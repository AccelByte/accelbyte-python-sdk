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

Example: '{"customAttributes": {"9UhMYWIH7NI8GqB8": {}, "xhNesWgCJ4Kdb2C5": {}, "iH8II3IrgGISVpkd": {}}, "name": "KuwYgdQXJdf3Vcjg", "payload": "2DEwhbnsNa20Rerf", "preview": "mnLoqU5M5p4FtIoI", "previewMetadata": {"previewContentType": "MeTndcaDkd80ywyU", "previewFileExtension": "PRx6FnXJXiElRT1o"}, "subType": "cqV7RZIsRaFAmwmI", "tags": ["NIB6KEbUAnfFTQR9", "QsFg6jAaEXtR4b2W", "frc1My2dTkqSBckA"], "type": "FZeprywhKQsd8CVI"}'
"""

result, error = update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
