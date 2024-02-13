import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_user_platform_accounts
from accelbyte_py_sdk.api.iam.models import AccountcommonUserLinkedPlatform
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_user_platform_accounts(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
