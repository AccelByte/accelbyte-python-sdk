import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_ban_user_v3
from accelbyte_py_sdk.api.iam.models import ModelBanCreateRequest
from accelbyte_py_sdk.api.iam.models import ModelUserBanResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelBanCreateRequest
ban: str
comment: str
end_date: str
reason: str
skip_notif: bool

Example: '{"ban": "AJ7QnkxiWT3QQaez", "comment": "rPYOzDsTKQGdNqKy", "endDate": "eJwqBFVmJ2wOxXRG", "reason": "mk8MvZKr4SzPjQVc", "skipNotif": true}'
"""

result, error = admin_ban_user_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
