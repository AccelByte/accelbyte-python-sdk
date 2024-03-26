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

Example: '{"customAttributes": {"dLpUpDS1BsJ97eb6": {}, "OpkcgPkq1okPq7U8": {}, "4gZN1wyxCsqO77rh": {}}, "name": "giNAgLaOqnImB1zD", "subType": "XVs0m2HqyIP5OCnn", "tags": ["32f37uK3evCabWpu", "C6W2n3smeMq9ZYtO", "sNNeXdGPEN6cyCBx"], "type": "Ys7f7GNFRzWf9bAw"}'
"""

result, error = public_update_content_by_share_code_v2(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
