import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_verify_user_by_link_v3

result, error = public_verify_user_by_link_v3(
    code=code,
    x_additional_headers=x_additional_headers,
)
