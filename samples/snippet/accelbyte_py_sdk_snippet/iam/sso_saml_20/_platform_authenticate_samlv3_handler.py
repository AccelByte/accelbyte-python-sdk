import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import platform_authenticate_samlv3_handler

result, error = platform_authenticate_samlv3_handler(
    platform_id=platform_id,
    state=state,
    code=code,
    error=error,
    x_additional_headers=x_additional_headers,
)
