import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import auth_code_request_v3

result, error = auth_code_request_v3(
    platform_id=platform_id,
    request_id=request_id,
    client_id=client_id,
    redirect_uri=redirect_uri,
    x_additional_headers=x_additional_headers,
)
