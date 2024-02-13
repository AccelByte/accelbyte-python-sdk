import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_user_single_platform_account
from accelbyte_py_sdk.api.iam.models import ModelUserPlatformMetadata
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_user_single_platform_account(
    platform_id=platform_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
