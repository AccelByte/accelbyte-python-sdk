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

Example: '{"customAttributes": {"KfCRMcT7V7qBzDWZ": {}, "vKj0yS3J6xtK1bpz": {}, "eOGq0BXXObOYjCSQ": {}}, "name": "dgA2M06Q5etgbcti", "shareCode": "UutFWDVZF7jZi2af", "subType": "RMtkHk2ecC1rSWv9", "tags": ["kb9vmWNuCGaTXAPg", "HzNg0A8Vmy0Y4B7e", "N1tzRCsMz1EpXmN1"], "type": "ht9iWVwKk9f6jJcX"}'
"""

result, error = admin_update_official_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
