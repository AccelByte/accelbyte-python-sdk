import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_ban_user_v2
from accelbyte_py_sdk.api.iam.models import ModelBanCreateRequest
from accelbyte_py_sdk.api.iam.models import ModelUserBanResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelBanCreateRequest
ban: str
comment: str
end_date: str
reason: str
skip_notif: bool

Example: '{"ban": "JMRVAvhN8LlRlieG", "comment": "7PUdniDgtLBao6cY", "endDate": "DqMTUzlE9WI3EzrC", "reason": "ht5VZbrrYOMbO8Af", "skipNotif": false}'
"""

result, error = admin_ban_user_v2(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
