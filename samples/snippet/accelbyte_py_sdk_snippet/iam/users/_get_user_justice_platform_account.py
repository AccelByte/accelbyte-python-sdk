import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_user_justice_platform_account
from accelbyte_py_sdk.api.iam.models import ModelGetUserJusticePlatformAccountResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_user_justice_platform_account(
    target_namespace=target_namespace,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
