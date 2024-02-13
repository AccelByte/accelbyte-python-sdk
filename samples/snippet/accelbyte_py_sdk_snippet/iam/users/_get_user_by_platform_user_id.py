import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_user_by_platform_user_id
from accelbyte_py_sdk.api.iam.models import ModelPublicUserResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_user_by_platform_user_id(
    platform_id=platform_id,
    platform_user_id=platform_user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
