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

Example: '{"customAttributes": {"S83MnWfQglKISiHO": {}, "QHEpBUN621h5ST8J": {}, "GCCwDiUw2l5xbH1V": {}}, "name": "D7jZQTfksj94J08m", "shareCode": "C4Ufg5chJRr582Xl", "subType": "Lr7xEOUfyBk70Qw8", "tags": ["fPdkXTiH0WDNvySG", "STklxzqWAyyIkUEI", "mu3xRQMfXAUu9cM6"], "type": "A0v5hmYuPlOK8IRY"}'
"""

result, error = admin_update_official_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
