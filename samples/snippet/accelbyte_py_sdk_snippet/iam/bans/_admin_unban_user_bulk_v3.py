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

Example: '{"bans": [{"banId": "xLkZqdi0lEqxxeCm", "userId": "d61xK0EgL9yynGjj"}, {"banId": "CGjQghjZNwnxZmYb", "userId": "RdJuAzTpUN1iW9ap"}, {"banId": "Tg6RiRwaordx4bWO", "userId": "UF31EKgAOCfbnI4m"}]}'
"""

result, error = admin_unban_user_bulk_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
