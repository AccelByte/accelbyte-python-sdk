import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_get_platform_credentials
from accelbyte_py_sdk.api.session.models import ModelsPlatformCredentials
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_get_platform_credentials(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
