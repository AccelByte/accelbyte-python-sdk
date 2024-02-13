import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_create_content_v2
from accelbyte_py_sdk.api.ugc.models import ModelsContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsContentRequestV2
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
sub_type: str
tags: List[str]
type_: str

Example: '{"contentType": "ptoqz7zJ0ogciamn", "customAttributes": {"XLUC0HWXfj8NttJN": {}, "LFZRqmTSYDqJJJu1": {}, "iUyBVHT1SyQPshfW": {}}, "fileExtension": "oFj5qvJdK3YsFF6I", "name": "pzxtkwubSDI2znjG", "subType": "R5u45NNaixcAbxOX", "tags": ["jgvSdvzZMWmzhRRV", "ZYe9ptfqLAtqamgG", "fVNm78rSxAfG5111"], "type": "bgc2pibwev6KEoTM"}'
"""

result, error = public_create_content_v2(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
