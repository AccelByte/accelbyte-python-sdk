import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_update_content_v2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateContentRequestV2
custom_attributes: Dict[str, Any]
name: str
sub_type: str
tags: List[str]
type_: str

Example: '{"customAttributes": {"D9raTncj3YxBvlsW": {}, "5HyswgL9GIRBO7JD": {}, "wn9osGGhwkPivZCf": {}}, "name": "bkWZsBjHWiVLhBzD", "subType": "sG0DolYeernRowKK", "tags": ["1WwH4jMJr7Fu27Hu", "ZNSzZpUhKFexDAOo", "IT2ZcEFu14bSbia4"], "type": "VP38XuaHLNxiaY0z"}'
"""

result, error = public_update_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
