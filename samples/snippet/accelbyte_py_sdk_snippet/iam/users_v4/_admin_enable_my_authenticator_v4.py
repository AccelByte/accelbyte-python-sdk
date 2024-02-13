import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_enable_my_authenticator_v4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_enable_my_authenticator_v4(
    code=code,
    x_additional_headers=x_additional_headers,
)
