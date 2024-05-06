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

Example: '{"customAttributes": {"6N76h3XAiZTeO8OC": {}, "sBMpJTUDTbMl3jB8": {}, "egF4Kjxs08mVCSmz": {}}, "name": "rNvshNAGYcEVRnUe", "subType": "cdVWbFsR866bhRfY", "tags": ["QqwhwBxA0qzSclUS", "3vppOr9ceDUiovXk", "3Vb6ln2QsDBxcMT2"], "type": "i0qmx8105XkOdFaN"}'
"""

result, error = public_update_content_by_share_code_v2(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
