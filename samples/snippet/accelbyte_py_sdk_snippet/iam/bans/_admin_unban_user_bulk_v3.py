import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_unban_user_bulk_v3
from accelbyte_py_sdk.api.iam.models import ModelBulkUnbanCreateRequestV3
from accelbyte_py_sdk.api.iam.models import ModelListBulkUserBanResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelBulkUnbanCreateRequestV3
bans: List[ModelUserUnbanCreateRequestV3]
Definition: List[ModelUserUnbanCreateRequestV3]
    ban_id: str
    user_id: str

Example: '{"bans": [{"banId": "PFNJsF94UKrl2B7A", "userId": "BCu7uXI9w44DnvQw"}, {"banId": "TrOYZ2dgt2B6riZS", "userId": "9HIgANmSTyLmGd96"}, {"banId": "ARL7Lgc0tsKiswE2", "userId": "Cu5WVQMkVztY5ZhF"}]}'
"""

result, error = admin_unban_user_bulk_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
