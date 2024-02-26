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

Example: '{"customAttributes": {"Q5iET8nLif0cVo2F": {}, "t9exY15WLUdKccAX": {}, "CHhaFWG6JnYBnJdS": {}}, "name": "5bh2KqXeCSL681HT", "subType": "np7QjGevtaKV5r98", "tags": ["dEQMeD0uh5DGWCIs", "TPdh09oNSjgruyuj", "cWvDrgLfbwQFTVkz"], "type": "bHhqtwysGDwIsCZa"}'
"""

result, error = public_update_content_by_share_code_v2(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
