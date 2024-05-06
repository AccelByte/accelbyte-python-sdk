import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_content_by_share_code_v2
from accelbyte_py_sdk.api.ugc.models import ModelsAdminUpdateContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponseV2
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

Example: '{"customAttributes": {"KsRBvNz8MEdQiiUD": {}, "zHCJOctbnLx1XvGW": {}, "05mZFXNQEx3J3iKc": {}}, "name": "KoiYmgcgnN0mbUNX", "shareCode": "KeJSev9M4Bamu8lK", "subType": "XzRU2shQp5biKToq", "tags": ["ydcfK5gcdD5NyqwT", "qksHwZAAMX5XlHjH", "hjbpvElNQ8hJS0HN"], "type": "tDJ2T55kxyB2rjMB"}'
"""

result, error = admin_update_content_by_share_code_v2(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
