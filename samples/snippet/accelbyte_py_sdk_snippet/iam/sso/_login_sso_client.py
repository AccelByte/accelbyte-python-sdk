import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import login_sso_client

result, error = login_sso_client(
    platform_id=platform_id,
    payload=payload,
    x_additional_headers=x_additional_headers,
)
