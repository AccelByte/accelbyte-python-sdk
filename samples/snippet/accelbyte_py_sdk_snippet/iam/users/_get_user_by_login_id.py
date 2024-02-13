import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_user_by_login_id
from accelbyte_py_sdk.api.iam.models import ModelPublicUserResponse

result, error = get_user_by_login_id(
    login_id=login_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
