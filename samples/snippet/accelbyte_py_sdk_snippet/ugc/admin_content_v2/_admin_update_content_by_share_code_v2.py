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

Example: '{"customAttributes": {"6tm0iiKkZwlJ8Y7k": {}, "Wk1jkMyOilwx4FZ3": {}, "vGS56Gosjsy9SXoU": {}}, "name": "90ttKpyx7VYPSg6u", "shareCode": "q1yBoC61K6QD6Auw", "subType": "imwc3zLknk3z9O73", "tags": ["D8Ja1hLNsv3Zh4nx", "x0dvfrLbtYbfme8P", "DckY2mPfa1WTW2lw"], "type": "sC7pCnkfD3iIuDbD"}'
"""

result, error = admin_update_content_by_share_code_v2(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
