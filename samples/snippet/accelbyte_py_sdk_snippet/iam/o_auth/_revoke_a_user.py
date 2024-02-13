import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import revoke_a_user

result, error = revoke_a_user(
    user_id=user_id,
    x_additional_headers=x_additional_headers,
)
