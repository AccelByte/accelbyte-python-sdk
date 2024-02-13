import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_user_platform_accounts_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonUserLinkedPlatformsResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_user_platform_accounts_v3(
    user_id=user_id,
    after=after,
    before=before,
    limit=limit,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
