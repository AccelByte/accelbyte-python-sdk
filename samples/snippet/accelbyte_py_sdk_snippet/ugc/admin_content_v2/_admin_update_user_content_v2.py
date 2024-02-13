import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_user_content_v2
from accelbyte_py_sdk.api.ugc.models import ModelsAdminUpdateContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentResponseV2
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

Example: '{"customAttributes": {"vcj2OeBfIBgIw9gD": {}, "o0gFu8XCgQeumgxr": {}, "Db7vvyEP2NABfbWI": {}}, "name": "zzUssgbB2gcDDOoN", "shareCode": "02QKlYjwgoH4H6nK", "subType": "pxNlTOZGQ1pb7v2X", "tags": ["EC12ZTJ3yXSsKwkR", "Omf5fUZhN4o7XRiZ", "OqXI94Vf7zbqz6FC"], "type": "WS5PfEF6r4d0IGHZ"}'
"""

result, error = admin_update_user_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
