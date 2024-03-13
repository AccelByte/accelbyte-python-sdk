import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_official_content_v2
from accelbyte_py_sdk.api.ugc.models import ModelsAdminUpdateContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsAdminUpdateContentRequestV2
custom_attributes: Dict[str, Any]
name: str
share_code: str
sub_type: str
tags: List[str]
type_: str

Example: '{"customAttributes": {"UzbswwIlocHIqGbs": {}, "8ecwOZs77YJu4pgh": {}, "KTZmWuXjQQSR3BLo": {}}, "name": "ki1AEqrLzJCtOfe3", "shareCode": "0brojitubYNFi8RY", "subType": "PI9kEmsCvS4NuTRM", "tags": ["R6QkA7WPXKYEprD1", "pKbg3Bchuj6nTulK", "epv1KPTUyjebTM0X"], "type": "l6vC8qqSJHovqzR7"}'
"""

result, error = admin_update_official_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
