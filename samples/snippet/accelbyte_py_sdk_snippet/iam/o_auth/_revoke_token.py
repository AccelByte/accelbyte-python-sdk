import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import revoke_token

result, error = revoke_token(
    token=token,
    x_additional_headers=x_additional_headers,
)
