import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_create_content_v2
from accelbyte_py_sdk.api.ugc.models import ModelsAdminContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsAdminContentRequestV2
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
share_code: str
sub_type: str
tags: List[str]
type_: str

Example: '{"contentType": "xMIHxeK5G6QEDS1X", "customAttributes": {"Eyrc1iedxBaPzqIV": {}, "2YXJ4HyIlEhbrYg4": {}, "wysB2hFfZA6JxAEh": {}}, "fileExtension": "cnkY30tXafvV931n", "name": "6TTahbBlMK5DLZPa", "shareCode": "Ziiu0ANsD3yhNoeG", "subType": "08hzKLAweiQ3bhiu", "tags": ["zfl33ZLZVpXMyzi5", "YF5D4zEkkWRUVBCo", "u3M96CqorShJJcDz"], "type": "HUM01OciIcIgwGqA"}'
"""

result, error = admin_create_content_v2(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
