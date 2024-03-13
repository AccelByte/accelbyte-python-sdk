import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_update_content_by_share_code_v2
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateContentRequestV2
custom_attributes: Dict[str, Any]
name: str
sub_type: str
tags: List[str]
type_: str

Example: '{"customAttributes": {"OKRnzeebChIr2Inc": {}, "DczVGwFQyfHyFndD": {}, "yxqzqeOx1Dwqj6rr": {}}, "name": "QJUFRa3pR4j7uUbg", "subType": "pDSHBUu7KwDJFvWB", "tags": ["YlWA7NGyjBu99Ozt", "6yatVDrzDIMwTSl6", "UOoG4nLdRDFCnA22"], "type": "0hsKDexGnToCZRwS"}'
"""

result, error = public_update_content_by_share_code_v2(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
