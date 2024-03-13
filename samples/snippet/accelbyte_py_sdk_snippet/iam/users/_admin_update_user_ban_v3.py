import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_user_ban_v3
from accelbyte_py_sdk.api.iam.models import ModelBanUpdateRequest
from accelbyte_py_sdk.api.iam.models import ModelUserBanResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelBanUpdateRequest
enabled: bool
skip_notif: bool

Example: '{"enabled": false, "skipNotif": true}'
"""

result, error = admin_update_user_ban_v3(
    body=body,
    ban_id=ban_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
