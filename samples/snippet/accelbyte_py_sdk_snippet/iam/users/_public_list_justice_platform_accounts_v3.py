import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_list_justice_platform_accounts_v3
from accelbyte_py_sdk.api.iam.models import ModelGetUserMappingV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_list_justice_platform_accounts_v3(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
