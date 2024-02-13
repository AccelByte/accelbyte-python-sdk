import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_banned_users_v3
from accelbyte_py_sdk.api.iam.models import ModelGetUserBanV3Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_banned_users_v3(
    active_only=active_only,
    ban_type=ban_type,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
