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

Example: '{"customAttributes": {"liGPpppulqt4hOAB": {}, "UEHnm9iW1q6IAYGX": {}, "nYvlmP3mZLUZDF8e": {}}, "name": "BveVXwkqHDPckXXR", "shareCode": "fbcOJVRZdkgylYUl", "subType": "RYlcPx4VreKu00ai", "tags": ["jnPMSeUtfSBkspYG", "yhOHsB4l3cgpGngD", "ajr6IDhslzyQvf3E"], "type": "8ye6sM0QzbUT4dig"}'
"""

result, error = admin_update_content_by_share_code_v2(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
