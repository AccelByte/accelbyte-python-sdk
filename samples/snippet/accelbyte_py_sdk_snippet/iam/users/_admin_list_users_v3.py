import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_list_users_v3
from accelbyte_py_sdk.api.iam.models import (
    AccountcommonListUsersWithPlatformAccountsResponse,
)
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_list_users_v3(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)