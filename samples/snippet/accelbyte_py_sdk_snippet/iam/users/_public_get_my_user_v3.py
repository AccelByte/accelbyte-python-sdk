import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_get_my_user_v3
from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_get_my_user_v3(
    include_all_platforms=include_all_platforms,
    x_additional_headers=x_additional_headers,
)
