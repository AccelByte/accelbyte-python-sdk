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

Example: '{"customAttributes": {"SR6FSRhfvq8ivBov": {}, "Ycj1QAR1MXBU5w72": {}, "SwTE927FJXMAVMoA": {}}, "name": "dGAWsOUoFPC4ZCCr", "subType": "QfomPQO9W0CdEFQZ", "tags": ["pVs5B5gkaFfwNeGN", "nKQdYazWoNMGNaiC", "CR15KmGnrHDAKH00"], "type": "LdXHWXFIVnVdprKr"}'
"""

result, error = public_update_content_by_share_code_v2(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
