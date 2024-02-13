import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import user_authentication_v3

result, error = user_authentication_v3(
    password=password,
    request_id=request_id,
    user_name=user_name,
    client_id=client_id,
    extend_exp=extend_exp,
    redirect_uri=redirect_uri,
    x_additional_headers=x_additional_headers,
)
