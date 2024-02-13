import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_get_user_by_platform_user_idv3
from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_get_user_by_platform_user_idv3(
    platform_id=platform_id,
    platform_user_id=platform_user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
