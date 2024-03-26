import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_official_content_v2
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

Example: '{"customAttributes": {"2nRN1DD5f9lRoQhe": {}, "9uyKxT1q6mX1DrES": {}, "Uz7sK74QTdUkKENa": {}}, "name": "Ouz6EPYHzFXOCf32", "shareCode": "EiwZGnVIiEpXeqjB", "subType": "nGp3uBEpiDIN3JNa", "tags": ["m1121I1XcODRK3LJ", "jgxACgmBTBn6Oahp", "I0Td5XufgrUU8Thj"], "type": "oHwhXDhKSWeeHamo"}'
"""

result, error = admin_update_official_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
