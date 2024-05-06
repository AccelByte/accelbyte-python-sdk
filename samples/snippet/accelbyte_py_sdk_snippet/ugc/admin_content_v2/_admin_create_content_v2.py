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

Example: '{"contentType": "jwNPwpPXni0khAMA", "customAttributes": {"6sQXHNTnFJDTIZ1G": {}, "CNJ8f1z8M04IUnqZ": {}, "DeMKgUy1yeGnIhvH": {}}, "fileExtension": "J38mJ3zp9EfYCslU", "name": "EQkdBssIQmWuDLDl", "shareCode": "KcCGpX11oIZ8MGHF", "subType": "W91zRfEhxtUh8LFo", "tags": ["snXQak8y1iZPTHq6", "3knI6utj1hjNZ4F8", "FSgtzSkxcqlMHO9h"], "type": "5KixbloUsfDLPBQv"}'
"""

result, error = admin_create_content_v2(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
