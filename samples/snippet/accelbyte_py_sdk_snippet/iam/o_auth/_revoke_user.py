import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import revoke_user

result, error = revoke_user(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
