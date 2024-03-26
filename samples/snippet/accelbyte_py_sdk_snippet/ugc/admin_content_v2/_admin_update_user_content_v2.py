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

Example: '{"customAttributes": {"YS1JrFYrcdSze5Vi": {}, "QbFN9TJmaWci2osV": {}, "Ck8TrjSpvHdiySyV": {}}, "name": "FikwSn0oWTMLbr9W", "shareCode": "hj7ZETv4bFoeYxn8", "subType": "r4pnzhqdkMi7hZzI", "tags": ["UQeAva1qUlqfsjyw", "h11RQFIKznGiakTL", "DRdWli05VGQdjmng"], "type": "mZU4IzKARwGl42Q3"}'
"""

result, error = admin_update_user_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
