import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_search_users_v2
from accelbyte_py_sdk.api.iam.models import ModelSearchUsersByPlatformIDResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_search_users_v2(
    platform_id=platform_id,
    after=after,
    before=before,
    display_name=display_name,
    limit=limit,
    login_id=login_id,
    platform_user_id=platform_user_id,
    role_id=role_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
