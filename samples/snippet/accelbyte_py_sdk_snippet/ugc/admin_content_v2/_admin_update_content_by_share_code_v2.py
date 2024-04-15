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

Example: '{"customAttributes": {"yOWgvrgK2VJwnilg": {}, "9Y6mC08IgE5Mte79": {}, "NCQqtQTZdlyPkiUK": {}}, "name": "rmSo5CAQvw2SWdVo", "shareCode": "IaFG6mLpsqhWF3UO", "subType": "LX7DqO0L6dGfQGCG", "tags": ["fENu2DfEODKpXs3A", "4vpZ0TSq6fCQakEy", "87MQz4Vdz7LPwhZM"], "type": "C6CiJRgBBn8b2OWn"}'
"""

result, error = admin_update_content_by_share_code_v2(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
