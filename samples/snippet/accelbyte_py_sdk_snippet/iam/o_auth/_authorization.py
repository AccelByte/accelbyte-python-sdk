import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import authorization

result, error = authorization(
    client_id=client_id,
    redirect_uri=redirect_uri,
    response_type=response_type,
    login=login,
    password=password,
    scope=scope,
    state=state,
    x_additional_headers=x_additional_headers,
)
