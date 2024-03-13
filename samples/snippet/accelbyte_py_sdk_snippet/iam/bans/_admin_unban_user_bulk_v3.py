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

Example: '{"bans": [{"banId": "4nMp9VTvCI9pSJQ6", "userId": "qOwPpb9gKynbya86"}, {"banId": "NZrrISw3sGAeScFQ", "userId": "7sgKmeRy5Rlq6CFD"}, {"banId": "janPgQyBnBZa6xKJ", "userId": "nQyMx5HJ7KH7GdsI"}]}'
"""

result, error = admin_unban_user_bulk_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
