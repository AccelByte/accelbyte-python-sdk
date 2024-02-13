import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_validate_user_by_user_id_and_password_v3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_validate_user_by_user_id_and_password_v3(
    password=password,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
