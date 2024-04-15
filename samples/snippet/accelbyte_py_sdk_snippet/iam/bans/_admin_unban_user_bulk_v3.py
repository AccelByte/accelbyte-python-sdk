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

Example: '{"bans": [{"banId": "05zLS5qtS2oNMlS7", "userId": "99u67TnpEJEtMVZH"}, {"banId": "1UCU4na6vkj6SkbK", "userId": "Nb7YuwFxMaZEi0jp"}, {"banId": "cF9XoqxDSsb9z0Cx", "userId": "q1aDkPLFjvjkPfHS"}]}'
"""

result, error = admin_unban_user_bulk_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
