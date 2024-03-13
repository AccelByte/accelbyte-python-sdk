import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_create_content_v2
from accelbyte_py_sdk.api.ugc.models import ModelsAdminContentRequestV2
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsAdminContentRequestV2
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
share_code: str
sub_type: str
tags: List[str]
type_: str

Example: '{"contentType": "fMGP80HOrSLKag0G", "customAttributes": {"m4F5lJgKtuq17dLS": {}, "kOCpu0CfCwlRD7Zd": {}, "FyrB6aH9XRHETMSW": {}}, "fileExtension": "CKQ6VRE5RRRltlF2", "name": "VfJsx6xn31T3HPKB", "shareCode": "jesJhamBPGBdHPnU", "subType": "2Y7GNKd01XgVcMNM", "tags": ["Og16wiVqOw3cuZW0", "TmnoUc8MKqxWkafq", "AF0CVcAIWGGWwL4A"], "type": "Oo9A4P1ukyTS4iJ9"}'
"""

result, error = admin_create_content_v2(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
