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

Example: '{"customAttributes": {"HSJyyrdMlq3wNJZf": {}, "e0bXs0Bp47LnuJOW": {}, "ayQemcWP8ywDZ5GZ": {}}, "name": "AyQLdqZ3seKFmR9h", "shareCode": "D030XkUKPEYfdTkj", "subType": "vx477IJsIv56pR7s", "tags": ["OVm6mnTwvMi0COdE", "j9ynaeKwlgzGP349", "vTX2DeRCTRX3BRRj"], "type": "CZuWCp9DlSlom4nd"}'
"""

result, error = admin_update_content_by_share_code_v2(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
