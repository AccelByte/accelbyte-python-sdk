import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_user_ban_v2
from accelbyte_py_sdk.api.iam.models import ModelUserBanResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_user_ban_v2(
    user_id=user_id,
    active_only=active_only,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
