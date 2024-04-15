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

Example: '{"customAttributes": {"5Qqbjby5VtrlSF8u": {}, "nrYGdtDU6lgt5QHo": {}, "5v1I8J0VI6ZyVAMI": {}}, "name": "BMQKo8BA2H1VdQvn", "shareCode": "7sfc802E232kh39i", "subType": "loZBRmtObUMei2T7", "tags": ["g9GpcHnjVheEbyOP", "koswh2FItJ6fDeaB", "aJ3BXaie3O8k9NK9"], "type": "Cs9cN0QcRXXBa8uK"}'
"""

result, error = admin_update_user_content_v2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
