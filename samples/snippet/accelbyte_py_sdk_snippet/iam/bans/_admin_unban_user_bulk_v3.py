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

Example: '{"bans": [{"banId": "f7VFiC5BqTXS4KkQ", "userId": "hVUwnpK12iOLjUOu"}, {"banId": "IMFMDNAbNdUxwkDg", "userId": "sh7P47oELiHqMcY2"}, {"banId": "MrUcNshy7nVoGsnl", "userId": "gB2I4Yenvb53pRpM"}]}'
"""

result, error = admin_unban_user_bulk_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
