import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_get_user_by_user_idv2
from accelbyte_py_sdk.api.iam.models import ModelUserResponse

result, error = public_get_user_by_user_idv2(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
