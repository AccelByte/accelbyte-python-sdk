import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_list_justice_platform_accounts
from accelbyte_py_sdk.api.iam.models import ModelGetUserMapping
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_list_justice_platform_accounts(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
